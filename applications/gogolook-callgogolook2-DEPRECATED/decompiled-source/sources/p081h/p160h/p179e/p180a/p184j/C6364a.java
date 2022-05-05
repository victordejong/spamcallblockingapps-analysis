package p081h.p160h.p179e.p180a.p184j;

import android.text.TextUtils;
import androidx.media2.session.SessionCommand;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.C6341b;
import p081h.p160h.p179e.p180a.C6344e;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p186m.AsyncTaskC6381g;
import p081h.p160h.p179e.p180a.p186m.C6382h;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* renamed from: h.h.e.a.j.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/j/a.class */
public class C6364a {

    /* renamed from: a */
    public static boolean f15834a = false;

    /* renamed from: b */
    public static String f15835b;

    /* renamed from: c */
    public static String f15836c;

    /* renamed from: d */
    public static String f15837d;

    /* renamed from: e */
    public static String f15838e;

    /* renamed from: f */
    public static int f15839f;

    /* renamed from: g */
    public static int f15840g;

    /* renamed from: h */
    public static String f15841h;

    /* renamed from: h.h.e.a.j.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/j/a$a.class */
    public static final class C6365a extends AbstractC6378d {

        /* renamed from: a */
        public final /* synthetic */ C6367b f15842a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC6378d f15843b;

        public C6365a(C6367b bVar, AbstractC6378d dVar) {
            this.f15842a = bVar;
            this.f15843b = dVar;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) throws Exception {
            C6438i.m22578d("[Auth] authAsync response : " + i + " , " + jSONObject);
            C6364a.m22976b(i, jSONObject, this.f15842a);
            AbstractC6378d dVar = this.f15843b;
            if (dVar != null) {
                dVar.mo1272a(i, jSONObject);
            }
        }
    }

    /* renamed from: h.h.e.a.j.a$b */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/j/a$b.class */
    public static final class C6366b extends AbstractC6378d {

        /* renamed from: a */
        public final /* synthetic */ C6369d f15844a;

        /* renamed from: b */
        public final /* synthetic */ C6341b f15845b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC6378d f15846c;

        public C6366b(C6369d dVar, C6341b bVar, AbstractC6378d dVar2) {
            this.f15844a = dVar;
            this.f15845b = bVar;
            this.f15846c = dVar2;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) throws Exception {
            C6438i.m22578d("[Auth] renewAccessTokenAsync statusCode = " + i);
            if (jSONObject != null) {
                C6438i.m22578d("[Auth] renewAccessTokenAsync response = " + jSONObject.toString());
            }
            C6364a.m22975b(i, jSONObject, this.f15844a, this.f15845b.f15757c);
            AbstractC6378d dVar = this.f15846c;
            if (dVar != null) {
                dVar.mo1272a(i, jSONObject);
            }
        }
    }

    /* renamed from: a */
    public static int m22987a(C6367b bVar) {
        C6341b b = m22974b(bVar);
        C6438i.m22578d("[Auth] authSync request : " + b.toString());
        C6382h a = AsyncTaskC6381g.m22894a(C6334a.m23211s().m23221i(), b);
        C6438i.m22578d("[Auth] authSync response : " + a.f15879a + " , " + a.f15880b);
        m22976b(a.f15879a, a.f15880b, bVar);
        return a.f15879a;
    }

    /* renamed from: a */
    public static C6341b m22984a(C6369d dVar, String str) {
        String a = C6334a.m23211s().m23246a("pref_auth_refreshtoken", (String) null, true);
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        String a2 = C6368c.m22950a(a, dVar, str);
        if (!TextUtils.isEmpty(a2)) {
            return m22979a("/auth/v1/token", m22971c(), m22969e(), a2);
        }
        return null;
    }

    /* renamed from: a */
    public static C6341b m22979a(String str, String str2, String str3, String str4) {
        if (str2 == null || str3 == null) {
            throw new NullPointerException("");
        }
        C6341b bVar = new C6341b();
        String d = m22970d();
        bVar.f15755a = d + str;
        bVar.f15756b = "POST";
        bVar.f15758d = m22980a(str2, str3);
        bVar.f15757c = str4;
        bVar.f15765k = false;
        bVar.f15768n = true;
        bVar.f15766l = false;
        bVar.f15770p = true;
        bVar.f15772r = 0;
        bVar.f15771q = 0;
        return bVar;
    }

    /* renamed from: a */
    public static String m22991a() {
        if (TextUtils.isEmpty(f15841h) && !TextUtils.isEmpty(m22969e()) && !TextUtils.isEmpty(m22978b())) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("User-Agent", m22972b(m22971c(), m22969e()));
                jSONObject.put("accesstoken", m22978b());
                f15841h = jSONObject.toString();
            } catch (JSONException e) {
                return null;
            }
        }
        return f15841h;
    }

    /* renamed from: a */
    public static String m22980a(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("User-Agent", m22972b(str, str2));
            jSONObject.put("Content-Type", "application/json");
            return jSONObject.toString();
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m22986a(C6367b bVar, AbstractC6378d dVar) {
        C6341b b = m22974b(bVar);
        C6438i.m22578d("[Auth] authAsync request : " + b.toString());
        b.f15760f = new C6365a(bVar, dVar);
        C6334a.m23211s().m23238b(b);
    }

    /* renamed from: a */
    public static void m22983a(C6369d dVar, String str, AbstractC6378d dVar2) {
        synchronized (C6364a.class) {
            try {
                C6438i.m22578d("[Auth] renewAccessTokenAsync start");
                if (f15834a) {
                    if (dVar2 != null) {
                        try {
                            dVar2.mo1272a(201, null);
                        } catch (Exception e) {
                            C6438i.m22583a(e);
                        }
                    }
                    return;
                }
                C6341b a = m22984a(dVar, str);
                if (a != null) {
                    C6438i.m22578d("[Auth] renewAccessTokenAsync request = " + a.toString());
                }
                if (a != null) {
                    a.f15760f = new C6366b(dVar, a, dVar2);
                    C6334a.m23211s().m23238b(a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m22982a(AbstractC6378d dVar) {
        C6341b bVar = new C6341b();
        String d = m22970d();
        bVar.f15755a = d + "/auth/v1/auth";
        bVar.f15756b = "DELETE";
        bVar.f15758d = m22991a();
        bVar.f15765k = false;
        bVar.f15768n = true;
        bVar.f15766l = false;
        bVar.f15772r = 0;
        bVar.f15771q = 0;
        bVar.f15760f = dVar;
        C6438i.m22578d("[Auth] prepare delete account : " + bVar.toString());
        C6334a.m23211s().m23238b(bVar);
    }

    /* renamed from: a */
    public static void m22981a(String str) {
        if (!TextUtils.isEmpty(str)) {
            f15837d = str;
        }
    }

    /* renamed from: a */
    public static boolean m22990a(int i, int i2) {
        if (f15834a) {
            C6438i.m22578d("[Auth] isAccessTokenExpired sIsRenewed = true, return false");
            return false;
        }
        long a = C6334a.m23211s().m23252a("pref_auth_expiredtime", 0L);
        if (a != 0 && System.currentTimeMillis() > a - 604800000) {
            C6438i.m22578d("[Auth] isAccessTokenExpired expired");
            return true;
        } else if ((i == 0 && i2 == 0) || !m22977b(i, i2)) {
            return false;
        } else {
            C6438i.m22578d("[Auth] isAccessTokenExpired scope change");
            return true;
        }
    }

    /* renamed from: a */
    public static boolean m22985a(C6369d dVar) {
        if (dVar == null) {
            return false;
        }
        return m22977b(dVar.m22948a(), dVar.m22946b());
    }

    /* renamed from: b */
    public static int m22973b(C6369d dVar, String str) {
        synchronized (C6364a.class) {
            try {
                C6438i.m22578d("[Auth] renewAccessTokenSync start");
                if (f15834a) {
                    return 201;
                }
                C6341b a = m22984a(dVar, str);
                C6382h hVar = new C6382h();
                if (a != null) {
                    hVar = AsyncTaskC6381g.m22894a(C6334a.m23211s().m23221i(), a);
                    C6438i.m22578d("[Auth] renewAccessTokenSync statusCode = " + hVar.f15879a);
                    if (hVar.f15880b != null) {
                        C6438i.m22578d("[Auth] renewAccessTokenSync response = " + hVar.f15880b.toString());
                    }
                    m22975b(hVar.f15879a, hVar.f15880b, dVar, a.f15757c);
                }
                return hVar.f15879a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static C6341b m22974b(C6367b bVar) {
        if (bVar != null) {
            return m22979a("/auth/v1/auth", bVar.m22955c(), bVar.m22962a(), bVar.m22952e());
        }
        throw new NullPointerException("WCAuthObject == null");
    }

    /* renamed from: b */
    public static String m22978b() {
        if (TextUtils.isEmpty(f15836c)) {
            f15836c = C6334a.m23211s().m23246a("pref_auth_accesstoken", (String) null, true);
        }
        return f15836c;
    }

    /* renamed from: b */
    public static String m22972b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return str + "|" + C6334a.m23211s().m23223g() + "|" + str2 + "|" + C6334a.m23211s().m23220j() + "|" + IJSExecutor.JS_FUNCTION_GROUP + "|" + C6432e.m22611a();
    }

    /* renamed from: b */
    public static void m22976b(int i, JSONObject jSONObject, C6367b bVar) {
        synchronized (C6364a.class) {
            try {
                if (jSONObject != null && i == 200) {
                    try {
                        JSONObject jSONObject2 = jSONObject.getJSONObject("result");
                        f15838e = null;
                        f15841h = null;
                        f15835b = jSONObject2.getString("uid");
                        f15836c = jSONObject2.getString("access_token");
                        f15837d = bVar.m22955c();
                        f15839f = bVar.m22957b();
                        f15840g = bVar.m22953d();
                        C6334a.m23211s().m23216n().edit().putString("pref_auth_appid", f15837d).putString("pref_auth_userid", f15835b).putLong("pref_auth_expiredtime", System.currentTimeMillis() + (jSONObject2.getLong("expires_in") * 1000)).putInt("pref_auth_api_scope", bVar.m22957b()).putInt("pref_auth_search_scope", bVar.m22953d()).apply();
                        C6334a.m23211s().m23233b("pref_auth_accesstoken", f15836c, true);
                        C6334a.m23211s().m23233b("pref_auth_refreshtoken", jSONObject2.getString("refresh_token"), true);
                    } catch (JSONException e) {
                        C6438i.m22583a(e);
                    }
                }
                C6357a.m23033a(m22970d() + "/auth/v1/auth", i, 10002);
                if (i != 200) {
                    C6432e.m22605a("AuthError", String.valueOf(i));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static void m22975b(int i, JSONObject jSONObject, C6369d dVar, String str) {
        synchronized (C6364a.class) {
            try {
                if (jSONObject != null && i == 200) {
                    try {
                        JSONObject jSONObject2 = jSONObject.getJSONObject("result");
                        long j = jSONObject2.getLong("expires_in") * 1000;
                        f15841h = null;
                        f15836c = jSONObject2.getString("access_token");
                        f15839f = dVar.m22948a();
                        f15840g = dVar.m22946b();
                        C6334a.m23211s().m23216n().edit().putInt("pref_auth_api_scope", dVar.m22948a()).putInt("pref_auth_search_scope", dVar.m22946b()).putLong("pref_auth_expiredtime", System.currentTimeMillis() + j).apply();
                        C6334a.m23211s().m23235b("pref_auth_expiredtime", System.currentTimeMillis() + j);
                        C6334a.m23211s().m23233b("pref_auth_accesstoken", f15836c, true);
                        if (!jSONObject2.isNull("refresh_token")) {
                            String a = C6334a.m23211s().m23246a("pref_auth_refreshtoken", "", true);
                            C6432e.m22605a("TokenRefreshError", "refreshToken : " + a + ", body : " + str);
                            C6334a.m23211s().m23233b("pref_auth_refreshtoken", jSONObject2.getString("refresh_token"), true);
                        }
                    } catch (Exception e) {
                        C6438i.m22583a(e);
                    }
                }
                if (i > 0) {
                    f15834a = true;
                }
                C6357a.m23033a(m22970d() + "/auth/v1/token", i, (int) SessionCommand.COMMAND_CODE_PLAYER_SEEK_TO);
                if (i != 200) {
                    C6432e.m22605a("TokenError", String.valueOf(i));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static boolean m22977b(int i, int i2) {
        C6334a s = C6334a.m23211s();
        return (i == s.m23253a("pref_auth_api_scope", 0) && i2 == s.m23253a("pref_auth_search_scope", 0)) ? false : true;
    }

    /* renamed from: c */
    public static String m22971c() {
        if (TextUtils.isEmpty(f15837d)) {
            f15837d = C6334a.m23211s().m23234b("pref_auth_appid", (String) null);
        }
        return f15837d;
    }

    /* renamed from: d */
    public static String m22970d() {
        return C6344e.m23186g() ? "https://auth-api.whoscall.com" : "https://auth-api-staging.whoscall.com";
    }

    /* renamed from: e */
    public static String m22969e() {
        String str;
        synchronized (C6364a.class) {
            try {
                if (TextUtils.isEmpty(f15835b)) {
                    C6334a s = C6334a.m23211s();
                    f15835b = s.m23234b("pref_auth_userid", (String) null);
                    if (!TextUtils.isEmpty(f15835b) && m22965i()) {
                        String b = C6334a.m23211s().m23234b("pref_auth_appid", (String) null);
                        if (TextUtils.isEmpty(b) || (!TextUtils.isEmpty(f15837d) && !f15837d.equals(b))) {
                            C6334a.m23211s().m23226d("pref_auth_appid", f15837d);
                            if (TextUtils.isEmpty(b)) {
                                C6432e.m22605a("AuthInitError", "appId == null");
                            } else {
                                C6432e.m22605a("AuthInitError", b);
                            }
                        }
                        C6438i.m22578d("[Auth] prepare renewAccessTokenAsync");
                        m22983a(new C6369d(s.m23253a("pref_auth_api_scope", 0), s.m23253a("pref_auth_search_scope", 0)), "internal: ", (AbstractC6378d) null);
                    }
                }
                str = f15835b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: f */
    public static C6369d m22968f() {
        C6334a s = C6334a.m23211s();
        return new C6369d(s.m23253a("pref_auth_api_scope", 0), s.m23253a("pref_auth_search_scope", 0));
    }

    /* renamed from: g */
    public static int m22967g() {
        if (f15840g == 0) {
            f15840g = C6334a.m23211s().m23253a("pref_auth_search_scope", 0);
        }
        return f15840g;
    }

    /* renamed from: h */
    public static String m22966h() {
        if (TextUtils.isEmpty(f15838e)) {
            f15838e = m22972b(m22971c(), m22969e());
        }
        return f15838e;
    }

    /* renamed from: i */
    public static boolean m22965i() {
        return m22990a(0, 0);
    }

    /* renamed from: j */
    public static boolean m22964j() {
        return f15834a;
    }

    /* renamed from: k */
    public static boolean m22963k() {
        boolean z = false;
        if (f15839f == 0) {
            f15839f = C6334a.m23211s().m23253a("pref_auth_api_scope", 0);
        }
        if (((f15839f | 268435456) & 268435520) == 268435520) {
            z = true;
        }
        return z;
    }
}
