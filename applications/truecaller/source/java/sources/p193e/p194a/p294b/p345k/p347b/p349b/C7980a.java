package p193e.p194a.p294b.p345k.p347b.p349b;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b.k.b.b.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/b/b/a.class */
public final class C7980a {

    /* renamed from: a */
    public long f24645a;

    /* renamed from: b */
    public String f24646b;

    /* renamed from: c */
    public String f24647c;

    /* renamed from: d */
    public String f24648d;

    /* renamed from: e */
    public Long f24649e;

    /* renamed from: f */
    public Long f24650f;

    public C7980a(String str, String str2, String str3, Long l, Long l2) {
        l.e(str, "hospitalName");
        l.e(str2, AnalyticsConstants.PHONE);
        this.f24646b = str;
        this.f24647c = str2;
        this.f24648d = str3;
        this.f24649e = l;
        this.f24650f = l2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C7980a)) {
                return false;
            }
            C7980a c7980a = (C7980a) obj;
            return l.a(this.f24646b, c7980a.f24646b) && l.a(this.f24647c, c7980a.f24647c) && l.a(this.f24648d, c7980a.f24648d) && l.a(this.f24649e, c7980a.f24649e) && l.a(this.f24650f, c7980a.f24650f);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f24646b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f24647c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f24648d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        Long l = this.f24649e;
        int hashCode4 = l != null ? l.hashCode() : 0;
        Long l2 = this.f24650f;
        if (l2 != null) {
            i = l2.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CovidHospitalContact(hospitalName=");
        m8728C.append(this.f24646b);
        m8728C.append(", phone=");
        m8728C.append(this.f24647c);
        m8728C.append(", address=");
        m8728C.append(this.f24648d);
        m8728C.append(", districtId=");
        m8728C.append(this.f24649e);
        m8728C.append(", stateId=");
        m8728C.append(this.f24650f);
        m8728C.append(")");
        return m8728C.toString();
    }
}
