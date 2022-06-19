package p193e.p194a.p1392y2;

import android.os.Bundle;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.y2.j */
/* loaded from: classes5-dex2jar.jar:e/a/y2/j.class */
public final class C21764j implements AbstractC19549v {

    /* renamed from: a */
    public final String f60606a;

    /* renamed from: b */
    public final String f60607b;

    /* renamed from: c */
    public final long f60608c;

    public C21764j(String str, String str2, long j) {
        l.e(str, "workerName");
        l.e(str2, "result");
        this.f60606a = str;
        this.f60607b = str2;
        this.f60608c = j;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        bundle.putString("workerName", this.f60606a);
        bundle.putString("result", this.f60607b);
        bundle.putLong("durationInMs", this.f60608c);
        return new AbstractC19580x.C19582b("TrackedWorkerEvent", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21764j)) {
                return false;
            }
            C21764j c21764j = (C21764j) obj;
            return l.a(this.f60606a, c21764j.f60606a) && l.a(this.f60607b, c21764j.f60607b) && this.f60608c == c21764j.f60608c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f60606a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f60607b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + i) * 31) + C4876d.m34274a(this.f60608c);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TrackedWorkerEvent(workerName=");
        m8728C.append(this.f60606a);
        m8728C.append(", result=");
        m8728C.append(this.f60607b);
        m8728C.append(", durationInMs=");
        return C22128a.m8693K2(m8728C, this.f60608c, ")");
    }
}
