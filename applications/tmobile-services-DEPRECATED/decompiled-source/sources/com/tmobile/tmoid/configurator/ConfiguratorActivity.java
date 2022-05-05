package com.tmobile.tmoid.configurator;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.tmobile.tmoid.agent.Configuration;
import com.tmobile.tmoid.agent.IAMAgentStateHolder;
import com.tmobile.tmoid.helperlib.C2031R;
import com.tmobile.tmoid.helperlib.util.Log;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/configurator/ConfiguratorActivity.class */
public class ConfiguratorActivity extends Activity {

    /* renamed from: f */
    Configuration f14702f;

    /* renamed from: g */
    View.OnClickListener f14703g = new View.OnClickListener() { // from class: com.tmobile.tmoid.configurator.ConfiguratorActivity.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ConfiguratorActivity.this.getPackageName().equals("com.tmobile.tmoid.agent")) {
                AccountManager accountManager = AccountManager.get(ConfiguratorActivity.this.getApplicationContext());
                Account[] accountsByType = accountManager.getAccountsByType("com.tmobile.tmoid.accounttype");
                if (accountsByType.length != 0 && accountsByType.length > 0) {
                    accountManager.removeAccount(accountsByType[0], null, null);
                }
            }
            IAMAgentStateHolder.m5162c(ConfiguratorActivity.this.getApplicationContext()).m5161d().m5117b();
            ConfiguratorActivity.this.f14702f.setCLEAR_CACHE(true);
            ConfiguratorActivity.this.m5062e();
        }
    };

    /* renamed from: h */
    View.OnClickListener f14704h = new View.OnClickListener() { // from class: com.tmobile.tmoid.configurator.ConfiguratorActivity.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ConfiguratorActivity.this.m5062e();
        }
    };

    /* renamed from: i */
    View.OnClickListener f14705i = new View.OnClickListener() { // from class: com.tmobile.tmoid.configurator.ConfiguratorActivity.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ConfiguratorActivity.this.f14702f.load_from_xml(ConfiguratorActivity.this.getApplicationContext(), false);
                ConfiguratorActivity.this.m5064c();
            } catch (IOException e) {
                Log.m4647v("TMO-Agent.Configurator", "while loading from xml", e);
            } catch (XmlPullParserException e2) {
                Log.m4647v("TMO-Agent.Configurator", "while loading from xml", e2);
            }
        }
    };

    /* renamed from: j */
    View.OnClickListener f14706j = new View.OnClickListener() { // from class: com.tmobile.tmoid.configurator.ConfiguratorActivity.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                ConfiguratorActivity.this.f14702f.load_from_xml(ConfiguratorActivity.this.getApplicationContext(), true);
                ConfiguratorActivity.this.m5064c();
            } catch (IOException e) {
                Log.m4647v("TMO-Agent.Configurator", "while loading from xml", e);
            } catch (XmlPullParserException e2) {
                Log.m4647v("TMO-Agent.Configurator", "while loading from xml", e2);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m5064c() {
        ((TextView) findViewById(C2031R.C2034id.tf_login_url)).setText(this.f14702f.getLOGIN_URL());
        ((TextView) findViewById(C2031R.C2034id.tf_logout_url)).setText(this.f14702f.getLOGOUT_URL());
        ((TextView) findViewById(C2031R.C2034id.tf_profile_url)).setText(this.f14702f.getPROFILE_URL());
        ((TextView) findViewById(C2031R.C2034id.tf_redirect_uri)).setText(this.f14702f.getREDIRECT_URI());
        ((TextView) findViewById(C2031R.C2034id.tf_sit_ses_url)).setText(this.f14702f.getSIT_SES_URL());
        ((TextView) findViewById(C2031R.C2034id.tf_authorization_url)).setText(this.f14702f.getAUTHORIZE_URL());
        ((TextView) findViewById(C2031R.C2034id.tf_token_url)).setText(this.f14702f.getACCESS_TOKEN_URL());
        ((CheckBox) findViewById(C2031R.C2034id.chk_enforce_computed_client_secret)).setChecked(this.f14702f.isENFORCE_COMPUTED_CLIENT_SECRET());
        ((CheckBox) findViewById(C2031R.C2034id.chk_add_authorization_header)).setChecked(this.f14702f.isADD_AUTHORIZATION_HEADER());
    }

    /* renamed from: d */
    private String m5063d(SharedPreferences.Editor editor, String str, int i) {
        String charSequence = ((TextView) findViewById(i)).getText().toString();
        try {
            new URL(charSequence);
            editor.putString(str, charSequence);
            return charSequence;
        } catch (MalformedURLException e) {
            Log.m4648v("TMO-Agent.Configurator", "while trying to save url to preferences:" + str + "=" + charSequence);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m5062e() {
        SharedPreferences.Editor edit = getSharedPreferences(Configuration.PREFERENCES_FILE, 0).edit();
        this.f14702f.set_LOGIN_URL(m5063d(edit, "dashboard.url", C2031R.C2034id.tf_login_url));
        this.f14702f.setLOGOUT_URL(m5063d(edit, "logout.url", C2031R.C2034id.tf_logout_url));
        this.f14702f.setPROFILE_URL(m5063d(edit, "profile.url", C2031R.C2034id.tf_profile_url));
        this.f14702f.set_REDIRECT_URI(m5063d(edit, "redirect.uri", C2031R.C2034id.tf_redirect_uri));
        this.f14702f.set_SIT_SES_URL(m5063d(edit, "ses.url", C2031R.C2034id.tf_sit_ses_url));
        this.f14702f.set_AUTHORIZE_URL(m5063d(edit, "authorize.url", C2031R.C2034id.tf_authorization_url));
        this.f14702f.setACCESS_TOKEN_URL(m5063d(edit, "accesstoken.url", C2031R.C2034id.tf_token_url));
        edit.putBoolean("clearcache", this.f14702f.isCLEAR_CACHE());
        edit.putString("device.agent", this.f14702f.getDEVICE_AGENT());
        this.f14702f.setENFORCE_COMPUTED_CLIENT_SECRET(((CheckBox) findViewById(C2031R.C2034id.chk_enforce_computed_client_secret)).isChecked());
        this.f14702f.setADD_AUTHORIZATION_HEADER(((CheckBox) findViewById(C2031R.C2034id.chk_add_authorization_header)).isChecked());
        edit.putBoolean("enforce_computed_client_secret", this.f14702f.isENFORCE_COMPUTED_CLIENT_SECRET());
        edit.commit();
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f14702f = IAMAgentStateHolder.m5162c(this).m5163b();
        setContentView(C2031R.layout.configurator_activity);
        setTitle(C2031R.string.title_configurator);
        ((TextView) findViewById(C2031R.C2034id.tf_login_url)).setText(this.f14702f.getLOGIN_URL());
        ((TextView) findViewById(C2031R.C2034id.tf_logout_url)).setText(this.f14702f.getLOGOUT_URL());
        ((TextView) findViewById(C2031R.C2034id.tf_profile_url)).setText(this.f14702f.getPROFILE_URL());
        ((TextView) findViewById(C2031R.C2034id.tf_redirect_uri)).setText(this.f14702f.getREDIRECT_URI());
        ((TextView) findViewById(C2031R.C2034id.tf_sit_ses_url)).setText(this.f14702f.getSIT_SES_URL());
        ((TextView) findViewById(C2031R.C2034id.tf_authorization_url)).setText(this.f14702f.getAUTHORIZE_URL());
        ((TextView) findViewById(C2031R.C2034id.tf_token_url)).setText(this.f14702f.getACCESS_TOKEN_URL());
        ((CheckBox) findViewById(C2031R.C2034id.chk_enforce_computed_client_secret)).setChecked(this.f14702f.isENFORCE_COMPUTED_CLIENT_SECRET());
        ((CheckBox) findViewById(C2031R.C2034id.chk_add_authorization_header)).setChecked(this.f14702f.isADD_AUTHORIZATION_HEADER());
        findViewById(C2031R.C2034id.btn_action_save).setOnClickListener(this.f14704h);
        findViewById(C2031R.C2034id.btn_load_defaults_prod).setOnClickListener(this.f14706j);
        findViewById(C2031R.C2034id.btn_load_defaults_lab).setOnClickListener(this.f14705i);
        findViewById(C2031R.C2034id.btnClearCache).setOnClickListener(this.f14703g);
    }
}
