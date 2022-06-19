package p193e.p194a.p1275v.p1276a.p1285e0;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v.a.e0.f */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/e0/f.class */
public final class C20747f {

    /* renamed from: a */
    public final String f58374a;

    /* renamed from: b */
    public final boolean f58375b;

    /* renamed from: c */
    public final boolean f58376c;

    public C20747f(String str, boolean z, boolean z2) {
        l.e(str, AnalyticsConstants.NAME);
        this.f58374a = str;
        this.f58375b = z;
        this.f58376c = z2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20747f)) {
                return false;
            }
            C20747f c20747f = (C20747f) obj;
            return l.a(this.f58374a, c20747f.f58374a) && this.f58375b == c20747f.f58375b && this.f58376c == c20747f.f58376c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f58374a;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f58375b;
        int i = 1;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        boolean z2 = this.f58376c;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        return (((hashCode * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Name(name=");
        m8728C.append(this.f58374a);
        m8728C.append(", allowSuggestion=");
        m8728C.append(this.f58375b);
        m8728C.append(", shouldShowVerifiedBadge=");
        return C22128a.m8590o(m8728C, this.f58376c, ")");
    }
}
