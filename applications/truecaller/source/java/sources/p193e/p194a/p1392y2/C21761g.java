package p193e.p194a.p1392y2;

import com.truecaller.background_work.WorkActionPeriod;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.y2.g */
/* loaded from: classes5-dex2jar.jar:e/a/y2/g.class */
public final class C21761g {

    /* renamed from: a */
    public final String f60597a;

    /* renamed from: b */
    public final WorkActionPeriod f60598b;

    /* renamed from: c */
    public final boolean f60599c;

    public C21761g(WorkActionPeriod workActionPeriod, boolean z) {
        l.e(workActionPeriod, "period");
        this.f60598b = workActionPeriod;
        this.f60599c = z;
        StringBuilder sb = new StringBuilder("Joint_");
        sb.append(workActionPeriod.name());
        if (z) {
            sb.append("_connected");
        }
        String sb2 = sb.toString();
        l.d(sb2, "StringBuilder(JOINT_JOB_…\n        toString()\n    }");
        this.f60597a = sb2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21761g)) {
                return false;
            }
            C21761g c21761g = (C21761g) obj;
            return l.a(this.f60598b, c21761g.f60598b) && this.f60599c == c21761g.f60599c;
        }
        return true;
    }

    public int hashCode() {
        WorkActionPeriod workActionPeriod = this.f60598b;
        int hashCode = workActionPeriod != null ? workActionPeriod.hashCode() : 0;
        boolean z = this.f60599c;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PeriodicActionBucket(period=");
        m8728C.append(this.f60598b);
        m8728C.append(", internetRequired=");
        return C22128a.m8590o(m8728C, this.f60599c, ")");
    }
}
