package p193e.p1485h.p1486a.p1493c.p1504t0;

import com.clevertap.android.sdk.CleverTapInstanceConfig;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.AbstractC22839u;
import p193e.p1485h.p1486a.p1493c.C22741j0;
/* renamed from: e.h.a.c.t0.d */
/* loaded from: classes-dex2jar.jar:e/h/a/c/t0/d.class */
public class C22835d implements AbstractC22833b {

    /* renamed from: a */
    public C22834c f63359a = new C22834c(AbstractC22839u.f63386b);

    /* renamed from: b */
    public final CleverTapInstanceConfig f63360b;

    public C22835d(CleverTapInstanceConfig cleverTapInstanceConfig) {
        this.f63360b = cleverTapInstanceConfig;
        StringBuilder m8728C = C22128a.m8728C("LegacyIdentityRepo Setting the default IdentitySet[");
        m8728C.append(this.f63359a);
        m8728C.append("]");
        cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), m8728C.toString());
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1504t0.AbstractC22833b
    /* renamed from: a */
    public C22834c mo7723a() {
        return this.f63359a;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1504t0.AbstractC22833b
    /* renamed from: b */
    public boolean mo7722b(String str) {
        boolean m7849a = C22741j0.m7849a(this.f63359a.f63358a, str);
        CleverTapInstanceConfig cleverTapInstanceConfig = this.f63360b;
        cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), "isIdentity [Key: " + str + " , Value: " + m7849a + "]");
        return m7849a;
    }
}
