package p134j4;

import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.json.JSONObject;
import p015b0.C0713a;
import p080e5.C2548e0;
import p125i5.C3120a;
import p156l4.C3496b;
import p168m5.C3646f;
import p189o4.AbstractC3882s;
/* renamed from: j4.s1 */
/* loaded from: classes-dex2jar.jar:j4/s1.class */
public class C3249s1 implements AbstractC3882s {

    /* renamed from: a */
    public final Object f10961a;

    /* renamed from: b */
    public final Object f10962b;

    /* renamed from: c */
    public final Object f10963c;

    public /* synthetic */ C3249s1(String str, C0713a c0713a) {
        C0713a c0713a2 = C0713a.f2749a;
        if (str != null) {
            this.f10963c = c0713a2;
            this.f10962b = c0713a;
            this.f10961a = str;
            return;
        }
        throw new IllegalArgumentException("url must not be null.");
    }

    public /* synthetic */ C3249s1(AbstractC3882s abstractC3882s, AbstractC3882s abstractC3882s2, AbstractC3882s abstractC3882s3) {
        this.f10961a = abstractC3882s;
        this.f10962b = abstractC3882s2;
        this.f10963c = abstractC3882s3;
    }

    /* renamed from: a */
    public C3120a m2509a(C3120a c3120a, C3646f c3646f) {
        m2508b(c3120a, "X-CRASHLYTICS-GOOGLE-APP-ID", c3646f.f11931a);
        m2508b(c3120a, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        m2508b(c3120a, "X-CRASHLYTICS-API-CLIENT-VERSION", "18.1.0");
        m2508b(c3120a, "Accept", "application/json");
        m2508b(c3120a, "X-CRASHLYTICS-DEVICE-MODEL", c3646f.f11932b);
        m2508b(c3120a, "X-CRASHLYTICS-OS-BUILD-VERSION", c3646f.f11933c);
        m2508b(c3120a, "X-CRASHLYTICS-OS-DISPLAY-VERSION", c3646f.f11934d);
        m2508b(c3120a, "X-CRASHLYTICS-INSTALLATION-ID", ((C2548e0) c3646f.f11935e).m3443c());
        return c3120a;
    }

    /* renamed from: b */
    public void m2508b(C3120a c3120a, String str, String str2) {
        if (str2 != null) {
            c3120a.f10557c.put(str, str2);
        }
    }

    /* renamed from: c */
    public C3120a m2507c(Map map) {
        Objects.requireNonNull((C0713a) this.f10962b);
        C3120a c3120a = new C3120a((String) this.f10961a, map);
        c3120a.f10557c.put("User-Agent", "Crashlytics Android SDK/18.1.0");
        c3120a.f10557c.put("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
        return c3120a;
    }

    /* renamed from: d */
    public JSONObject m2506d(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            C0713a c0713a = (C0713a) this.f10963c;
            StringBuilder m8752j = C0082b.m8752j("Failed to parse settings JSON from ");
            m8752j.append((String) this.f10961a);
            c0713a.m7438i(m8752j.toString(), e);
            C0713a c0713a2 = (C0713a) this.f10963c;
            c0713a2.m7439h("Settings response " + str);
            return null;
        }
    }

    /* renamed from: e */
    public Map m2505e(C3646f c3646f) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", c3646f.f11938h);
        hashMap.put("display_version", c3646f.f11937g);
        hashMap.put("source", Integer.toString(c3646f.f11939i));
        String str = c3646f.f11936f;
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("instance", str);
        }
        return hashMap;
    }

    @Override // p189o4.AbstractC3882s
    public /* bridge */ /* synthetic */ Object zza() {
        Object zza = ((AbstractC3882s) this.f10961a).zza();
        return new C3246r1((C3259w) zza, (C3252t1) ((AbstractC3882s) this.f10962b).zza(), (C3496b) ((AbstractC3882s) this.f10963c).zza());
    }
}
