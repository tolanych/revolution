<div class="container">

    <h2>{$_lang.help_page_title}</h2>

    <div id="helpBanner">
        <div id="helpLogo">
            <img src="{$_config.template_url}/images/modx-help-logo.png">
        </div>
        <h3>{$_lang.help_main_head}</h3>
        <p>{$_lang.help_main_subhead}</p>
    </div>


    <div id="managerbuttons">
        <ul>

            <li>
                <a href="{$_lang.forums_link}" target="_blank" title="{$_lang.forums_title}">
                    <span class="icon"><i class="icon-comments icon-3x"></i></span>
                    <span class="headline">{$_lang.forums}</span>
                    <span class="subline">{$_lang.forums_description}</span>
                </a>
            </li>

            <li>
                <a href="{$_lang.docs_link}" target="_blank" title="{$_lang.docs_title}">
                    <span class="icon"><i class="icon-book icon-3x"></i></span>
                    <span class="headline">{$_lang.docs}</span>
                    <span class="subline">{$_lang.docs_description}</span>
                </a>
            </li>

            <li>
                <a href="{$_lang.bugs_link}" target="_blank" title="{$_lang.bugs_title}">
                    <span class="icon"><i class="icon-exclamation-sign icon-3x"></i></span>
                    <span class="headline">{$_lang.bugs}</span>
                    <span class="subline">{$_lang.bugs_description}</span>
                </a>
            </li>

            <li>
                <a href="{$_lang.support_link}" class="supportTicket" title="{$_lang.support_title}">
                    <span class="icon"><i class="icon-credit-card icon-3x"></i></span>
                    <span class="headline">{$_lang.support}</span>
                    <span class="subline">{$_lang.support_description}</span>
                </a>
            </li>

        </ul>
    </div>

    <div id="contactus">
        <h3>{$_lang.email_sub} </h3>
        <p>{$_lang.email_sub_description}</p>
        <form id="mcsignup" action="http://modxcms.list-manage.com/subscribe/post" method="post">
            <input type="hidden" name="u" value="08b25a8de68a29fe03a483720" />
            <input type="hidden" name="id" value="848cf40420" />

            <input type="hidden" name="MERGE7" value="[[++site_url]] Manager" id="MERGE7">

            <input type="email" placeholder="you@example.com" required id="MERGE0" name="MERGE0" value="" class="textbox" />
            <input  type="submit" name="Submit" value="{$_lang.email_sub_button}" />
        </form>

        <p>{$_lang.social_follows}</p>

        <p><a href=""><i class="icon-2x icon-twitter"></i>Twitter: twitter.com/modx</a> </p>

        <p><a href=""><i class="icon-2x icon-facebook-sign"></i>Facebook: www.facebook.com/modxcms </a> </p>
        
        <p><a href=""><i class="icon-2x icon-google-plus"></i>Google+: google.com/+modx </a> </p>
    </div>

    <div id="adblock">
    This will be fed with amazing informations via the Ajaxes with a local fallback. Included will be important notices, MODX Professionals Ads, Site Sponsor Ads, etc. Likely using the Orbit Ad Server: http://orbitopenadserver.com
    </div>

    <div id="aboutMODX">
    <p>{$_lang.help_about}</p>

    <p>{$_lang.help_credit}</p>

</div>

  <script src="https://checkout.stripe.com/v2/checkout.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"></script>


  <script>
    $('.supportTicket').click(function(){
      var token = function(res){
        var $input = $('<input type=hidden name=stripeToken />').val(res.id);
        $('form').append($input).submit();
      };

      StripeCheckout.open({
        key:         'pk_test_hT0zzA6jxhqLhyxltfU61Ld3',
        address:     false,
        amount:      30000,
        currency:    'usd',
        name:        '{$_lang.support_ticket_title}',
        description: '{$_lang.support_ticket_subtitle}',
        panelLabel:  '{$_lang.support_ticket_button}',
        token:       token
      });

      return false;
    });
  </script>
