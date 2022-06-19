package com.unknownphone.callblocker.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.C0456a;
import androidx.core.p017a.C0438a;
import com.facebook.AbstractC1985f;
import com.facebook.AbstractC1989h;
import com.facebook.C1803a;
import com.facebook.C2102k;
import com.facebook.C2194n;
import com.facebook.FacebookException;
import com.facebook.login.C2162o;
import com.facebook.login.widget.LoginButton;
import com.google.android.gms.auth.api.signin.C2409a;
import com.google.android.gms.auth.api.signin.C2411c;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.material.bottomsheet.DialogC4570a;
import com.google.android.material.snackbar.Snackbar;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.CustomApplication;
import com.unknownphone.callblocker.p186d.C5290b;
import com.unknownphone.callblocker.p186d.C5292d;
import com.unknownphone.callblocker.selector.SelectorActivity;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONObject;
@SuppressLint({"SimpleDateFormat"})
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/activity/SettingsActivity.class */
public class SettingsActivity extends Activity implements View.OnClickListener {

    /* renamed from: a */
    private static final String f22023a = SettingsActivity.class.getSimpleName();

    /* renamed from: b */
    private AppCompatTextView f22024b;

    /* renamed from: c */
    private AppCompatImageButton f22025c;

    /* renamed from: d */
    private AppCompatImageButton f22026d;

    /* renamed from: e */
    private AppCompatImageButton f22027e;

    /* renamed from: f */
    private C2411c f22028f;

    /* renamed from: g */
    private AppCompatTextView f22029g;

    /* renamed from: h */
    private AppCompatTextView f22030h;

    /* renamed from: i */
    private AppCompatTextView f22031i;

    /* renamed from: j */
    private AppCompatTextView f22032j;

    /* renamed from: k */
    private AbstractC1985f f22033k;

    /* renamed from: l */
    private AppCompatTextView f22034l;

    /* renamed from: m */
    private LoginButton f22035m;

    /* renamed from: n */
    private C5290b f22036n;

    /* renamed from: o */
    private SharedPreferences f22037o;

    /* renamed from: p */
    private C5292d f22038p;

    /* renamed from: q */
    private View f22039q;

    /* renamed from: r */
    private boolean f22040r;

    /* renamed from: s */
    private View f22041s;

    /* renamed from: t */
    private View f22042t;

    /* renamed from: a */
    private void m1165a() {
        if (C0438a.m20898a(this, "android.permission.GET_ACCOUNTS") == 0) {
            startActivityForResult(this.f22028f.m14549a(), 863);
        } else if (this.f22040r) {
            Snackbar.m2494a(this.f22041s, "No permission!", -1).mo2491d();
        } else {
            C0456a.m20820a(this, new String[]{"android.permission.GET_ACCOUNTS"}, 258);
        }
    }

    /* renamed from: a */
    public void m1164a(C2162o c2162o) {
        try {
            if (c2162o.m15085a() == null || c2162o.m15085a().m16239o()) {
                throw new Exception();
            }
            C2102k m15339a = C2102k.m15339a(c2162o.m15085a(), new C2102k.AbstractC2109c() { // from class: com.unknownphone.callblocker.activity.SettingsActivity.3
                @Override // com.facebook.C2102k.AbstractC2109c
                /* renamed from: a */
                public void mo1149a(JSONObject jSONObject, C2194n c2194n) {
                    if (jSONObject == null) {
                        return;
                    }
                    HashMap hashMap = new HashMap();
                    hashMap.put("email", jSONObject.optString("email"));
                    hashMap.put("_action", "_link_rss_to_api_key");
                    hashMap.put("api_key", C5287g.m1076c(SettingsActivity.this.f22037o.getString("api_key", "")));
                    hashMap.put("fullname", jSONObject.optString("name"));
                    SettingsActivity.this.f22038p.m1042a(hashMap, null);
                }
            });
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id,name,email");
            m15339a.m15341a(bundle);
            m15339a.m15292j();
            FirebaseAnalytics m1112a = CustomApplication.m1112a();
            if (m1112a != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putLong("success", 1L);
                bundle2.putString("method", "Facebook");
                m1112a.m2182a("sign_up", bundle2);
            }
            this.f22037o.edit().putBoolean("linked_to_fb", true).apply();
            this.f22041s.setVisibility(8);
            View inflate = getLayoutInflater().inflate(2131492936, (ViewGroup) null);
            ((AppCompatImageView) inflate.findViewById(2131296492)).setImageResource(2131230973);
            final DialogC4570a dialogC4570a = new DialogC4570a(this);
            dialogC4570a.setContentView(inflate);
            dialogC4570a.show();
            new Handler().postDelayed(new Runnable() { // from class: com.unknownphone.callblocker.activity.SettingsActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        dialogC4570a.hide();
                    } catch (Exception e) {
                    }
                }
            }, 3000L);
        } catch (Exception e) {
            Snackbar.m2495a(this.f22041s, 2131755053, -1).mo2491d();
        }
    }

    /* renamed from: a */
    private void m1163a(AbstractC4469g<GoogleSignInAccount> abstractC4469g) {
        try {
            GoogleSignInAccount mo3901a = abstractC4469g.mo3901a(ApiException.class);
            if (mo3901a == null) {
                throw new ApiException(Status.f7034f);
            }
            HashMap hashMap = new HashMap();
            hashMap.put("email", C5287g.m1076c(mo3901a.m14593c()));
            hashMap.put("_action", "_link_rss_to_api_key");
            hashMap.put("api_key", C5287g.m1076c(this.f22037o.getString("api_key", "")));
            hashMap.put("fullname", C5287g.m1076c(mo3901a.m14591e()));
            this.f22038p.m1042a(hashMap, null);
            FirebaseAnalytics m1112a = CustomApplication.m1112a();
            if (m1112a != null) {
                Bundle bundle = new Bundle();
                bundle.putLong("success", 1L);
                bundle.putString("method", "Google");
                m1112a.m2182a("sign_up", bundle);
            }
            this.f22037o.edit().putBoolean("linked_to_google", true).apply();
            this.f22041s.setVisibility(8);
            View inflate = getLayoutInflater().inflate(2131492936, (ViewGroup) null);
            ((AppCompatImageView) inflate.findViewById(2131296492)).setImageResource(2131230974);
            final DialogC4570a dialogC4570a = new DialogC4570a(this);
            dialogC4570a.setContentView(inflate);
            dialogC4570a.show();
            new Handler().postDelayed(new Runnable() { // from class: com.unknownphone.callblocker.activity.SettingsActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        dialogC4570a.hide();
                    } catch (Exception e) {
                    }
                }
            }, 3000L);
        } catch (ApiException e) {
            Log.d(f22023a, e.toString());
            Snackbar.m2495a(this.f22041s, 2131755053, -1).mo2491d();
        }
    }

    /* renamed from: a */
    private void m1160a(boolean z) {
        this.f22024b.setVisibility(z ? 8 : 0);
        this.f22029g.setVisibility(z ? 0 : 8);
    }

    /* renamed from: b */
    private void m1159b() {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", String.format(Locale.US, "%s\n%s", getString(2131755589), "https://play.google.com/store/apps/details?id=com.unknownphone.callblocker"));
        intent.setType("text/plain");
        intent.setPackage("com.facebook.katana");
        if (intent.resolveActivity(getPackageManager()) != null) {
            startActivity(intent);
        } else {
            Snackbar.m2494a(this.f22025c, getString(2131755580), -1).mo2491d();
        }
    }

    /* renamed from: c */
    private void m1157c() {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", String.format(Locale.US, "%s\n%s", getString(2131755589), "https://play.google.com/store/apps/details?id=com.unknownphone.callblocker"));
        intent.setType("text/plain");
        intent.setPackage("com.twitter.android");
        if (intent.resolveActivity(getPackageManager()) != null) {
            startActivity(intent);
        } else {
            Snackbar.m2494a(this.f22027e, getString(2131755581), -1).mo2491d();
        }
    }

    /* renamed from: d */
    private void m1155d() {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", String.format(Locale.US, "%s\n%s", getString(2131755589), "https://play.google.com/store/apps/details?id=com.unknownphone.callblocker"));
        intent.setType("text/plain");
        intent.setPackage("com.whatsapp");
        if (intent.resolveActivity(getPackageManager()) != null) {
            startActivity(intent);
        } else {
            Snackbar.m2494a(this.f22026d, getString(2131755591), -1).mo2491d();
        }
    }

    /* renamed from: e */
    private void m1154e() {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", String.format(Locale.US, "%s\n%s", getString(2131755589), "https://play.google.com/store/apps/details?id=com.unknownphone.callblocker"));
        intent.setType("text/plain");
        startActivity(Intent.createChooser(intent, "Share via:"));
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        this.f22033k.mo15648a(i, i2, intent);
        super.onActivityResult(i, i2, intent);
        if (i == 863) {
            m1163a(C2409a.m14550a(intent));
        } else if (i != 174) {
        } else {
            Intent intent2 = new Intent(getApplicationContext(), MainActivity.class);
            intent2.addFlags(268468224);
            startActivity(intent2);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296266:
                startActivity(new Intent(this, AboutActivity.class));
                return;
            case 2131296388:
                this.f22036n.m1065a();
                m1160a(false);
                return;
            case 2131296392:
                finish();
                return;
            case 2131296408:
                Intent intent = new Intent("android.intent.action.SENDTO");
                intent.setData(Uri.parse("mailto:"));
                intent.putExtra("android.intent.extra.EMAIL", new String[]{"callblocker@unknownphone.com"});
                String str = "2.4";
                String valueOf = String.valueOf(129);
                StringBuilder append = new StringBuilder().append("CallBlocker Android v");
                if (TextUtils.isEmpty("2.4")) {
                    str = "0.0";
                }
                intent.putExtra("android.intent.extra.TEXT", append.append(str).append(", build ").append(TextUtils.isEmpty(valueOf) ? "0" : valueOf).toString());
                if (intent.resolveActivity(getPackageManager()) == null) {
                    return;
                }
                startActivity(intent);
                return;
            case 2131296453:
                this.f22037o.edit().putBoolean("show_feedback_option_in_settings", false).apply();
                C5287g.m1082b(this);
                return;
            case 2131296477:
                startActivity(new Intent(this, HelpActivity.class));
                return;
            case 2131296503:
                Intent intent2 = new Intent(this, SelectorActivity.class);
                intent2.putExtra("selector_type", "selector_type_language");
                startActivity(intent2);
                return;
            case 2131296520:
                this.f22035m.performClick();
                return;
            case 2131296521:
                m1165a();
                return;
            case 2131296602:
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.unknownphone.com/privacy-policy")));
                return;
            case 2131296612:
                Intent intent3 = new Intent(this, SelectorActivity.class);
                intent3.putExtra("selector_type", "selector_type_region");
                startActivity(intent3);
                return;
            case 2131296652:
                m1159b();
                return;
            case 2131296653:
                m1154e();
                return;
            case 2131296654:
                m1157c();
                return;
            case 2131296655:
                m1155d();
                return;
            case 2131296699:
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.unknownphone.com/terms-of-service")));
                return;
            case 2131296743:
                Intent intent4 = new Intent(this, PremiumActivity.class);
                intent4.putExtra("show_premium_tab", true);
                startActivityForResult(intent4, 174);
                return;
            default:
                return;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492903);
        this.f22038p = C5292d.m1044a();
        this.f22036n = new C5290b(this);
        this.f22037o = getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        this.f22024b = (AppCompatTextView) findViewById(2131296435);
        this.f22025c = (AppCompatImageButton) findViewById(2131296652);
        this.f22026d = (AppCompatImageButton) findViewById(2131296655);
        this.f22027e = (AppCompatImageButton) findViewById(2131296654);
        this.f22039q = findViewById(2131296744);
        this.f22035m = (LoginButton) findViewById(2131296451);
        this.f22029g = (AppCompatTextView) findViewById(2131296388);
        this.f22030h = (AppCompatTextView) findViewById(2131296504);
        this.f22031i = (AppCompatTextView) findViewById(2131296300);
        this.f22041s = findViewById(2131296519);
        this.f22032j = (AppCompatTextView) findViewById(2131296613);
        this.f22034l = (AppCompatTextView) findViewById(2131296743);
        this.f22042t = findViewById(2131296454);
        findViewById(2131296602).setOnClickListener(this);
        findViewById(2131296388).setOnClickListener(this);
        findViewById(2131296520).setOnClickListener(this);
        findViewById(2131296653).setOnClickListener(this);
        findViewById(2131296699).setOnClickListener(this);
        findViewById(2131296521).setOnClickListener(this);
        findViewById(2131296503).setOnClickListener(this);
        findViewById(2131296453).setOnClickListener(this);
        findViewById(2131296408).setOnClickListener(this);
        findViewById(2131296612).setOnClickListener(this);
        findViewById(2131296392).setOnClickListener(this);
        findViewById(2131296266).setOnClickListener(this);
        findViewById(2131296477).setOnClickListener(this);
        this.f22025c.setOnClickListener(this);
        this.f22026d.setOnClickListener(this);
        this.f22027e.setOnClickListener(this);
        this.f22034l.setOnClickListener(this);
        this.f22028f = C2409a.m14553a((Activity) this, new GoogleSignInOptions.C2408a(GoogleSignInOptions.f6902f).m14557b().m14555d());
        this.f22033k = AbstractC1985f.C1986a.m15722a();
        this.f22035m.setReadPermissions(Arrays.asList("public_profile", "email"));
        this.f22035m.m15053a(this.f22033k, new AbstractC1989h<C2162o>() { // from class: com.unknownphone.callblocker.activity.SettingsActivity.1
            @Override // com.facebook.AbstractC1989h
            /* renamed from: a */
            public void mo1153a() {
            }

            @Override // com.facebook.AbstractC1989h
            /* renamed from: a */
            public void mo1152a(FacebookException facebookException) {
                Snackbar.m2495a(SettingsActivity.this.f22041s, 2131755053, -1).mo2491d();
            }

            /* renamed from: a */
            public void mo1150a(C2162o c2162o) {
                SettingsActivity.this.m1164a(c2162o);
            }
        });
        m1160a(!this.f22036n.m1064a(0, 1).isEmpty());
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 258) {
            if (iArr.length > 0 && iArr[0] == 0) {
                startActivityForResult(this.f22028f.m14549a(), 863);
            } else if (C0456a.m20821a((Activity) this, "android.permission.GET_ACCOUNTS")) {
            } else {
                this.f22040r = true;
            }
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        Pair<String, String> m1088a = C5287g.m1088a(this.f22037o.getString("language_code", Locale.getDefault().getLanguage()));
        this.f22030h.setText((CharSequence) m1088a.second);
        this.f22032j.setText(new Locale((String) m1088a.first, this.f22037o.getString("region_code", C5287g.m1095a((Context) this))).getDisplayCountry());
        if (this.f22037o.contains("subscription_ends_at")) {
            this.f22031i.setText(2131755551);
            this.f22039q.setVisibility(8);
            this.f22034l.setVisibility(8);
        } else {
            this.f22031i.setText(2131755550);
            this.f22039q.setVisibility(0);
            this.f22034l.setVisibility(0);
        }
        this.f22042t.setVisibility(this.f22037o.getBoolean("show_feedback_option_in_settings", false) ? 0 : 8);
    }

    @Override // android.app.Activity
    protected void onStart() {
        boolean z = true;
        int i = 0;
        super.onStart();
        boolean z2 = C2409a.m14552a(this) != null;
        C1803a m16259a = C1803a.m16259a();
        if (m16259a == null || m16259a.m16239o()) {
            z = false;
        }
        this.f22037o.edit().putBoolean("linked_to_google", z2).putBoolean("linked_to_fb", z).apply();
        View view = this.f22041s;
        if (z2 || z) {
            i = 8;
        }
        view.setVisibility(i);
    }
}
