package p193e.p1485h.p1486a.p1493c.p1504t0;

import android.content.Context;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.razorpay.AnalyticsConstants;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.C22718b0;
import p193e.p1485h.p1486a.p1493c.C22735g0;
/* renamed from: e.h.a.c.t0.f */
/* loaded from: classes-dex2jar.jar:e/h/a/c/t0/f.class */
public class C22838f {

    /* renamed from: a */
    public final CleverTapInstanceConfig f63382a;

    /* renamed from: b */
    public final Context f63383b;

    /* renamed from: c */
    public final C22718b0 f63384c;

    public C22838f(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, C22718b0 c22718b0) {
        this.f63383b = context;
        this.f63382a = cleverTapInstanceConfig;
        this.f63384c = c22718b0;
    }

    /* renamed from: a */
    public void m7717a(String str, String str2, String str3) {
        boolean m7905o = this.f63384c.m7905o();
        CleverTapInstanceConfig cleverTapInstanceConfig = this.f63382a;
        cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), "isErrorDeviceId:[" + m7905o + "]");
        if (m7905o || str == null || str2 == null || str3 == null) {
            return;
        }
        String m8725C2 = C22128a.m8725C2(str2, AnalyticsConstants.DELIMITER_MAIN, str3);
        JSONObject m7715c = m7715c();
        try {
            m7715c.put(m8725C2, str);
            m7711g(m7715c);
        } catch (Throwable th) {
            C22735g0 m42081b = this.f63382a.m42081b();
            String str4 = this.f63382a.f2240a;
            StringBuilder m8728C = C22128a.m8728C("Error caching guid: ");
            m8728C.append(th.toString());
            m42081b.m7855b(str4, m8728C.toString());
        }
    }

    /* renamed from: b */
    public boolean m7716b() {
        boolean z = true;
        if (m7715c().length() <= 1) {
            z = false;
        }
        CleverTapInstanceConfig cleverTapInstanceConfig = this.f63382a;
        cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), "deviceIsMultiUser:[" + z + "]");
        return z;
    }

    /* renamed from: c */
    public JSONObject m7715c() {
        String m2483B0 = C26232y.m2483B0(this.f63383b, this.f63382a, "cachedGUIDsKey", null);
        CleverTapInstanceConfig cleverTapInstanceConfig = this.f63382a;
        cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), C22128a.m8725C2("getCachedGUIDs:[", m2483B0, "]"));
        C22735g0 m42081b = this.f63382a.m42081b();
        String str = this.f63382a.f2240a;
        JSONObject jSONObject = null;
        if (m2483B0 != null) {
            try {
                jSONObject = new JSONObject(m2483B0);
            } catch (Throwable th) {
                StringBuilder m8728C = C22128a.m8728C("Error reading guid cache: ");
                m8728C.append(th.toString());
                m42081b.m7855b(str, m8728C.toString());
                jSONObject = null;
            }
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        return jSONObject;
    }

    /* renamed from: d */
    public String m7714d() {
        String m2483B0 = C26232y.m2483B0(this.f63383b, this.f63382a, "SP_KEY_PROFILE_IDENTITIES", "");
        CleverTapInstanceConfig cleverTapInstanceConfig = this.f63382a;
        cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), C22128a.m8543z2("getCachedIdentityKeysForAccount:", m2483B0));
        return m2483B0;
    }

    /* renamed from: e */
    public String m7713e(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        try {
            String string = m7715c().getString(C22128a.m8725C2(str, AnalyticsConstants.DELIMITER_MAIN, str2));
            CleverTapInstanceConfig cleverTapInstanceConfig = this.f63382a;
            cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), "getGUIDForIdentifier:[Key:" + str + ", value:" + string + "]");
            return string;
        } catch (Throwable th) {
            C22735g0 m42081b = this.f63382a.m42081b();
            String str3 = this.f63382a.f2240a;
            StringBuilder m8728C = C22128a.m8728C("Error reading guid cache: ");
            m8728C.append(th.toString());
            m42081b.m7855b(str3, m8728C.toString());
            return null;
        }
    }

    /* renamed from: f */
    public boolean m7712f() {
        boolean z = m7715c().length() <= 0;
        CleverTapInstanceConfig cleverTapInstanceConfig = this.f63382a;
        cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), "isAnonymousDevice:[" + z + "]");
        return z;
    }

    /* renamed from: g */
    public void m7711g(JSONObject jSONObject) {
        try {
            String jSONObject2 = jSONObject.toString();
            C26232y.m2466F1(this.f63383b, C26232y.m2398W1(this.f63382a, "cachedGUIDsKey"), jSONObject2);
            CleverTapInstanceConfig cleverTapInstanceConfig = this.f63382a;
            cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), "setCachedGUIDs:[" + jSONObject2 + "]");
        } catch (Throwable th) {
            C22735g0 m42081b = this.f63382a.m42081b();
            String str = this.f63382a.f2240a;
            StringBuilder m8728C = C22128a.m8728C("Error persisting guid cache: ");
            m8728C.append(th.toString());
            m42081b.m7855b(str, m8728C.toString());
        }
    }
}
