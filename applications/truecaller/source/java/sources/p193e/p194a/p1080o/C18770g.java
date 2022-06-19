package p193e.p194a.p1080o;

import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.Contact;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.o.g */
/* loaded from: classes8-dex2jar.jar:e/a/o/g.class */
public final class C18770g {

    /* renamed from: a */
    public final Contact f52732a;

    /* renamed from: b */
    public final AvatarXConfig f52733b;

    public C18770g(Contact contact, AvatarXConfig avatarXConfig) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(avatarXConfig, "avatarXConfig");
        this.f52732a = contact;
        this.f52733b = avatarXConfig;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18770g)) {
                return false;
            }
            C18770g c18770g = (C18770g) obj;
            return l.a(this.f52732a, c18770g.f52732a) && l.a(this.f52733b, c18770g.f52733b);
        }
        return true;
    }

    public int hashCode() {
        Contact contact = this.f52732a;
        int i = 0;
        int hashCode = contact != null ? contact.hashCode() : 0;
        AvatarXConfig avatarXConfig = this.f52733b;
        if (avatarXConfig != null) {
            i = avatarXConfig.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ContextCallSupportContact(contact=");
        m8728C.append(this.f52732a);
        m8728C.append(", avatarXConfig=");
        m8728C.append(this.f52733b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
