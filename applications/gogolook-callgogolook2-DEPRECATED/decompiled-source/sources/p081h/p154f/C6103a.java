package p081h.p154f;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.internal.C2416h0;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: h.f.a */
/* loaded from: classes-dex2jar.jar:h/f/a.class */
public class C6103a {

    /* renamed from: a */
    public final SharedPreferences f15161a;

    /* renamed from: b */
    public final C6104a f15162b;

    /* renamed from: c */
    public C6150u f15163c;

    /* renamed from: h.f.a$a */
    /* loaded from: classes-dex2jar.jar:h/f/a$a.class */
    public static class C6104a {
        /* renamed from: a */
        public C6150u m23838a() {
            return new C6150u(C6135n.m23746e());
        }
    }

    public C6103a() {
        this(C6135n.m23746e().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0), new C6104a());
    }

    public C6103a(SharedPreferences sharedPreferences, C6104a aVar) {
        this.f15161a = sharedPreferences;
        this.f15162b = aVar;
    }

    /* renamed from: a */
    public void m23846a() {
        this.f15161a.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
        if (m23839g()) {
            m23842d().m23697a();
        }
    }

    /* renamed from: a */
    public void m23845a(AccessToken accessToken) {
        C2416h0.m34791a(accessToken, "accessToken");
        try {
            this.f15161a.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", accessToken.m35488y().toString()).apply();
        } catch (JSONException e) {
        }
    }

    /* renamed from: b */
    public final AccessToken m23844b() {
        String string = this.f15161a.getString("com.facebook.AccessTokenManager.CachedAccessToken", null);
        if (string == null) {
            return null;
        }
        try {
            return AccessToken.m35500a(new JSONObject(string));
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: c */
    public final AccessToken m23843c() {
        Bundle b = m23842d().m23693b();
        return (b == null || !C6150u.m23690d(b)) ? null : AccessToken.m35504a(b);
    }

    /* renamed from: d */
    public final C6150u m23842d() {
        if (this.f15163c == null) {
            synchronized (this) {
                if (this.f15163c == null) {
                    this.f15163c = this.f15162b.m23838a();
                }
            }
        }
        return this.f15163c;
    }

    /* renamed from: e */
    public final boolean m23841e() {
        return this.f15161a.contains("com.facebook.AccessTokenManager.CachedAccessToken");
    }

    /* renamed from: f */
    public AccessToken m23840f() {
        AccessToken accessToken;
        if (m23841e()) {
            accessToken = m23844b();
        } else if (m23839g()) {
            AccessToken c = m23843c();
            accessToken = c;
            if (c != null) {
                m23845a(c);
                m23842d().m23697a();
                accessToken = c;
            }
        } else {
            accessToken = null;
        }
        return accessToken;
    }

    /* renamed from: g */
    public final boolean m23839g() {
        return C6135n.m23729v();
    }
}
