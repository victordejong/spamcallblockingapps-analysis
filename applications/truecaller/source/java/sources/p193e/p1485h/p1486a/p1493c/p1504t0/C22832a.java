package p193e.p1485h.p1486a.p1493c.p1504t0;

import android.content.Context;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.AbstractC22839u;
import p193e.p1485h.p1486a.p1493c.C22718b0;
import p193e.p1485h.p1486a.p1493c.C22741j0;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22713b;
/* renamed from: e.h.a.c.t0.a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/t0/a.class */
public class C22832a implements AbstractC22833b {

    /* renamed from: a */
    public C22834c f63354a;

    /* renamed from: b */
    public final C22838f f63355b;

    /* renamed from: c */
    public final CleverTapInstanceConfig f63356c;

    /* renamed from: d */
    public final C22713b f63357d;

    public C22832a(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, C22718b0 c22718b0, C22713b c22713b) {
        this.f63356c = cleverTapInstanceConfig;
        C22838f c22838f = new C22838f(context, cleverTapInstanceConfig, c22718b0);
        this.f63355b = c22838f;
        this.f63357d = c22713b;
        C22834c c22834c = new C22834c(c22838f.m7714d().split(","));
        cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), "ConfigurableIdentityRepoPrefIdentitySet [" + c22834c + "]");
        C22834c c22834c2 = new C22834c(cleverTapInstanceConfig.f2256q);
        cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), "ConfigurableIdentityRepoConfigIdentitySet [" + c22834c2 + "]");
        if (!c22834c.m7724a() || !c22834c2.m7724a() || c22834c.equals(c22834c2)) {
            cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), "ConfigurableIdentityRepoNo error found while comparing [Pref:" + c22834c + "], [Config:" + c22834c2 + "]");
        } else {
            c22713b.m7926b(C26232y.m2468F(531, -1, new String[0]));
            cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), "ConfigurableIdentityRepopushing error due to mismatch [Pref:" + c22834c + "], [Config:" + c22834c2 + "]");
        }
        if (c22834c.m7724a()) {
            this.f63354a = c22834c;
            StringBuilder m8728C = C22128a.m8728C("ConfigurableIdentityRepoIdentity Set activated from Pref[");
            m8728C.append(this.f63354a);
            m8728C.append("]");
            cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), m8728C.toString());
        } else if (c22834c2.m7724a()) {
            this.f63354a = c22834c2;
            StringBuilder m8728C2 = C22128a.m8728C("ConfigurableIdentityRepoIdentity Set activated from Config[");
            m8728C2.append(this.f63354a);
            m8728C2.append("]");
            cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), m8728C2.toString());
        } else {
            this.f63354a = new C22834c(AbstractC22839u.f63386b);
            StringBuilder m8728C3 = C22128a.m8728C("ConfigurableIdentityRepoIdentity Set activated from Default[");
            m8728C3.append(this.f63354a);
            m8728C3.append("]");
            cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), m8728C3.toString());
        }
        if (!c22834c.m7724a()) {
            String c22834c3 = this.f63354a.toString();
            try {
                C26232y.m2297u0(c22838f.f63383b).edit().putString(C26232y.m2398W1(c22838f.f63382a, "SP_KEY_PROFILE_IDENTITIES"), c22834c3).apply();
            } catch (Throwable th) {
            }
            CleverTapInstanceConfig cleverTapInstanceConfig2 = c22838f.f63382a;
            cleverTapInstanceConfig2.f2253n.m7855b(cleverTapInstanceConfig2.m42082a("ON_USER_LOGIN"), C22128a.m8543z2("saveIdentityKeysForAccount:", c22834c3));
            CleverTapInstanceConfig cleverTapInstanceConfig3 = this.f63356c;
            cleverTapInstanceConfig3.f2253n.m7855b(cleverTapInstanceConfig3.m42082a("ON_USER_LOGIN"), C22128a.m8725C2("ConfigurableIdentityRepoSaving Identity Keys in Pref[", c22834c3, "]"));
        }
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1504t0.AbstractC22833b
    /* renamed from: a */
    public C22834c mo7723a() {
        return this.f63354a;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1504t0.AbstractC22833b
    /* renamed from: b */
    public boolean mo7722b(String str) {
        boolean m7849a = C22741j0.m7849a(this.f63354a.f63358a, str);
        CleverTapInstanceConfig cleverTapInstanceConfig = this.f63356c;
        cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), "ConfigurableIdentityRepoisIdentity [Key: " + str + " , Value: " + m7849a + "]");
        return m7849a;
    }
}
