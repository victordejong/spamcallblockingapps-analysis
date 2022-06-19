package p193e.p194a.p1129p5.p1131r0;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.p5.r0.a */
/* loaded from: classes15-dex2jar.jar:e/a/p5/r0/a.class */
public final class C19263a {

    /* renamed from: a */
    public final String f53645a;

    /* renamed from: b */
    public final String f53646b;

    public C19263a(String str, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(str2, "address");
        this.f53645a = str;
        this.f53646b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C19263a)) {
                return false;
            }
            C19263a c19263a = (C19263a) obj;
            return l.a(this.f53645a, c19263a.f53645a) && l.a(this.f53646b, c19263a.f53646b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f53645a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f53646b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BluetoothHeadset(name=");
        m8728C.append(this.f53645a);
        m8728C.append(", address=");
        return C22128a.m8618h(m8728C, this.f53646b, ")");
    }
}
