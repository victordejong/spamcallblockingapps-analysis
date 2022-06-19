package p193e.p194a.p1342w4.p1344s;

import com.razorpay.AnalyticsConstants;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.w4.s.y */
/* loaded from: classes13-dex2jar.jar:e/a/w4/s/y.class */
public final class C21293y {

    /* renamed from: a */
    public final Contact f59645a;

    /* renamed from: b */
    public final String f59646b;

    /* renamed from: c */
    public final FilterMatch f59647c;

    public C21293y(Contact contact, String str, FilterMatch filterMatch) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(str, "matchedValue");
        this.f59645a = contact;
        this.f59646b = str;
        this.f59647c = filterMatch;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C21293y)) {
                return false;
            }
            C21293y c21293y = (C21293y) obj;
            return l.a(this.f59645a, c21293y.f59645a) && l.a(this.f59646b, c21293y.f59646b) && l.a(this.f59647c, c21293y.f59647c);
        }
        return true;
    }

    public int hashCode() {
        Contact contact = this.f59645a;
        int i = 0;
        int hashCode = contact != null ? contact.hashCode() : 0;
        String str = this.f59646b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        FilterMatch filterMatch = this.f59647c;
        if (filterMatch != null) {
            i = filterMatch.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ContactWithFilterMatch(contact=");
        m8728C.append(this.f59645a);
        m8728C.append(", matchedValue=");
        m8728C.append(this.f59646b);
        m8728C.append(", filterMatch=");
        m8728C.append(this.f59647c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
