package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.C1803a;
import com.facebook.C1990i;
import com.facebook.C2095j;
import com.facebook.EnumC1981d;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookServiceException;
import com.facebook.internal.C2079x;
import com.facebook.login.C2141j;
import java.util.Locale;
/* renamed from: com.facebook.login.s */
/* loaded from: classes-dex2jar.jar:com/facebook/login/s.class */
public abstract class AbstractC2172s extends AbstractC2161n {

    /* renamed from: c */
    private String f6345c;

    public AbstractC2172s(Parcel parcel) {
        super(parcel);
    }

    public AbstractC2172s(C2141j c2141j) {
        super(c2141j);
    }

    /* renamed from: d */
    private void m15070d(String str) {
        this.f6340b.m15181b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", str).apply();
    }

    /* renamed from: f */
    private String m15069f() {
        return this.f6340b.m15181b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
    }

    /* renamed from: a */
    public Bundle m15075a(Bundle bundle, C2141j.C2145c c2145c) {
        bundle.putString("redirect_uri", mo15072c());
        bundle.putString("client_id", c2145c.m15155d());
        C2141j c2141j = this.f6340b;
        bundle.putString("e2e", C2141j.m15165m());
        bundle.putString("response_type", "token,signed_request,graph_domain");
        bundle.putString("return_scopes", "true");
        bundle.putString("auth_type", c2145c.m15150i());
        bundle.putString("sdk", String.format(Locale.ROOT, "android-%s", C2095j.m15358j()));
        if (mo15071d() != null) {
            bundle.putString("sso", mo15071d());
        }
        return bundle;
    }

    /* renamed from: a */
    public void m15074a(C2141j.C2145c c2145c, Bundle bundle, FacebookException facebookException) {
        String str;
        C2141j.C2147d m15143a;
        this.f6345c = null;
        if (bundle != null) {
            if (bundle.containsKey("e2e")) {
                this.f6345c = bundle.getString("e2e");
            }
            try {
                C1803a a = m15089a(c2145c.m15160a(), bundle, mo15064d_(), c2145c.m15155d());
                m15143a = C2141j.C2147d.m15146a(this.f6340b.m15178c(), a);
                CookieSyncManager.createInstance(this.f6340b.m15181b()).sync();
                m15070d(a.m16250d());
            } catch (FacebookException e) {
                m15143a = C2141j.C2147d.m15144a(this.f6340b.m15178c(), null, e.getMessage());
            }
        } else if (facebookException instanceof FacebookOperationCanceledException) {
            m15143a = C2141j.C2147d.m15145a(this.f6340b.m15178c(), "User canceled log in.");
        } else {
            this.f6345c = null;
            String message = facebookException.getMessage();
            if (facebookException instanceof FacebookServiceException) {
                C1990i m16260a = ((FacebookServiceException) facebookException).m16260a();
                str = String.format(Locale.ROOT, "%d", Integer.valueOf(m16260a.m15707b()));
                message = m16260a.toString();
            } else {
                str = null;
            }
            m15143a = C2141j.C2147d.m15143a(this.f6340b.m15178c(), null, message, str);
        }
        if (!C2079x.m15472a(this.f6345c)) {
            m15087b(this.f6345c);
        }
        this.f6340b.m15186a(m15143a);
    }

    /* renamed from: b */
    public Bundle m15073b(C2141j.C2145c c2145c) {
        Bundle bundle = new Bundle();
        if (!C2079x.m15462a(c2145c.m15160a())) {
            String join = TextUtils.join(",", c2145c.m15160a());
            bundle.putString("scope", join);
            m15090a("scope", join);
        }
        bundle.putString("default_audience", c2145c.m15156c().m15255a());
        bundle.putString("state", m15091a(c2145c.m15154e()));
        C1803a m16259a = C1803a.m16259a();
        String m16250d = m16259a != null ? m16259a.m16250d() : null;
        if (m16250d == null || !m16250d.equals(m15069f())) {
            C2079x.m15452b(this.f6340b.m15181b());
            m15090a("access_token", "0");
        } else {
            bundle.putString("access_token", m16250d);
            m15090a("access_token", "1");
        }
        bundle.putString("cbt", String.valueOf(System.currentTimeMillis()));
        bundle.putString("ies", C2095j.m15352p() ? "1" : "0");
        return bundle;
    }

    /* renamed from: c */
    public String mo15072c() {
        return "fb" + C2095j.m15356l() + "://authorize";
    }

    /* renamed from: d */
    protected String mo15071d() {
        return null;
    }

    /* renamed from: d_ */
    abstract EnumC1981d mo15064d_();
}
