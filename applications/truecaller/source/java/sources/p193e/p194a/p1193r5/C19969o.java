package p193e.p194a.p1193r5;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.whoviewedme.ProfileViewSource;
import com.truecaller.whoviewedme.ProfileViewType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.r5.o */
/* loaded from: classes8-dex2jar.jar:e/a/r5/o.class */
public final class C19969o {

    /* renamed from: a */
    public final long f56474a;

    /* renamed from: b */
    public final long f56475b;

    /* renamed from: c */
    public final ProfileViewType f56476c;

    /* renamed from: d */
    public final ProfileViewSource f56477d;

    /* renamed from: e */
    public final Contact f56478e;

    public C19969o(long j, long j2, ProfileViewType profileViewType, ProfileViewSource profileViewSource, Contact contact) {
        l.e(profileViewType, "type");
        l.e(contact, AnalyticsConstants.CONTACT);
        this.f56474a = j;
        this.f56475b = j2;
        this.f56476c = profileViewType;
        this.f56477d = profileViewSource;
        this.f56478e = contact;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C19969o)) {
                return false;
            }
            C19969o c19969o = (C19969o) obj;
            return this.f56474a == c19969o.f56474a && this.f56475b == c19969o.f56475b && l.a(this.f56476c, c19969o.f56476c) && l.a(this.f56477d, c19969o.f56477d) && l.a(this.f56478e, c19969o.f56478e);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f56474a);
        int m34274a2 = C4876d.m34274a(this.f56475b);
        ProfileViewType profileViewType = this.f56476c;
        int i = 0;
        int hashCode = profileViewType != null ? profileViewType.hashCode() : 0;
        ProfileViewSource profileViewSource = this.f56477d;
        int hashCode2 = profileViewSource != null ? profileViewSource.hashCode() : 0;
        Contact contact = this.f56478e;
        if (contact != null) {
            i = contact.hashCode();
        }
        return (((((((m34274a * 31) + m34274a2) * 31) + hashCode) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ProfileViewEvent(id=");
        m8728C.append(this.f56474a);
        m8728C.append(", timeStamp=");
        m8728C.append(this.f56475b);
        m8728C.append(", type=");
        m8728C.append(this.f56476c);
        m8728C.append(", source=");
        m8728C.append(this.f56477d);
        m8728C.append(", contact=");
        m8728C.append(this.f56478e);
        m8728C.append(")");
        return m8728C.toString();
    }
}
