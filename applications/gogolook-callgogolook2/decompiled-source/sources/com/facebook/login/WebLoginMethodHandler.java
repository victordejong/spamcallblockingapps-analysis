package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.internal.C2408g0;
import com.facebook.login.LoginClient;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.Locale;
import p081h.p154f.C6131k;
import p081h.p154f.C6134m;
import p081h.p154f.C6135n;
import p081h.p154f.C6143p;
import p081h.p154f.EnumC6114c;
import zendesk.support.CreateRequest;
/* loaded from: classes-dex2jar.jar:com/facebook/login/WebLoginMethodHandler.class */
public abstract class WebLoginMethodHandler extends LoginMethodHandler {

    /* renamed from: c */
    public String f3312c;

    public WebLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    public WebLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    /* renamed from: t */
    public static final String m34411t() {
        return "fb" + C6135n.m23745f() + "://authorize";
    }

    /* renamed from: a */
    public Bundle m34417a(Bundle bundle, LoginClient.Request request) {
        bundle.putString("redirect_uri", m34411t());
        bundle.putString("client_id", request.m34450a());
        bundle.putString("e2e", LoginClient.m34480A());
        bundle.putString("response_type", "token,signed_request");
        bundle.putString("return_scopes", "true");
        bundle.putString("auth_type", request.m34444c());
        bundle.putString(CreateRequest.METADATA_SDK_KEY, String.format(Locale.ROOT, "android-%s", C6135n.m23733r()));
        if (mo34413q() != null) {
            bundle.putString("sso", mo34413q());
        }
        return bundle;
    }

    /* renamed from: a */
    public void m34416a(LoginClient.Request request, Bundle bundle, C6131k kVar) {
        LoginClient.Result result;
        String str;
        this.f3312c = null;
        if (bundle != null) {
            if (bundle.containsKey("e2e")) {
                this.f3312c = bundle.getString("e2e");
            }
            try {
                AccessToken a = LoginMethodHandler.m34427a(request.m34439u(), bundle, mo34405r(), request.m34450a());
                result = LoginClient.Result.m34436a(this.f3310b.m34455v(), a);
                CookieSyncManager.createInstance(this.f3310b.m34460q()).sync();
                m34414d(a.m35491v());
            } catch (C6131k e) {
                result = LoginClient.Result.m34434a(this.f3310b.m34455v(), null, e.getMessage());
            }
        } else if (kVar instanceof C6134m) {
            result = LoginClient.Result.m34435a(this.f3310b.m34455v(), "User canceled log in.");
        } else {
            this.f3312c = null;
            String message = kVar.getMessage();
            if (kVar instanceof C6143p) {
                FacebookRequestError a2 = ((C6143p) kVar).m23725a();
                str = String.format(Locale.ROOT, "%d", Integer.valueOf(a2.m35475a()));
                message = a2.toString();
            } else {
                str = null;
            }
            result = LoginClient.Result.m34433a(this.f3310b.m34455v(), null, message, str);
        }
        if (!C2408g0.m34816d(this.f3312c)) {
            m34425b(this.f3312c);
        }
        this.f3310b.m34465b(result);
    }

    /* renamed from: b */
    public Bundle m34415b(LoginClient.Request request) {
        Bundle bundle = new Bundle();
        if (!C2408g0.m34845a(request.m34439u())) {
            String join = TextUtils.join(",", request.m34439u());
            bundle.putString("scope", join);
            m34428a("scope", join);
        }
        bundle.putString("default_audience", request.m34443q().m34399a());
        bundle.putString(IapProductRealmObject.STATE, m34429a(request.m34446b()));
        AccessToken B = AccessToken.m35507B();
        String v = B != null ? B.m35491v() : null;
        if (v == null || !v.equals(m34412s())) {
            C2408g0.m34873a(this.f3310b.m34460q());
            m34428a("access_token", "0");
        } else {
            bundle.putString("access_token", v);
            m34428a("access_token", "1");
        }
        return bundle;
    }

    /* renamed from: d */
    public final void m34414d(String str) {
        this.f3310b.m34460q().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", str).apply();
    }

    /* renamed from: q */
    public String mo34413q() {
        return null;
    }

    /* renamed from: r */
    public abstract EnumC6114c mo34405r();

    /* renamed from: s */
    public final String m34412s() {
        return this.f3310b.m34460q().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
    }
}
