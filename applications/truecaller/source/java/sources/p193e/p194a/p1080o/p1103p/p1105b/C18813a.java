package p193e.p194a.p1080o.p1103p.p1105b;

import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.o.p.b.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/b/a.class */
public final class C18813a {

    /* renamed from: a */
    public final String f52845a;

    /* renamed from: b */
    public final String f52846b;

    /* renamed from: c */
    public final String f52847c;

    /* renamed from: d */
    public final AvatarXConfig f52848d;

    /* renamed from: e */
    public final boolean f52849e;

    public C18813a(String str, String str2, String str3, AvatarXConfig avatarXConfig, boolean z) {
        l.e(str2, AnalyticsConstants.NAME);
        l.e(str3, "number");
        l.e(avatarXConfig, "avatarXConfig");
        this.f52845a = str;
        this.f52846b = str2;
        this.f52847c = str3;
        this.f52848d = avatarXConfig;
        this.f52849e = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18813a)) {
                return false;
            }
            C18813a c18813a = (C18813a) obj;
            return l.a(this.f52845a, c18813a.f52845a) && l.a(this.f52846b, c18813a.f52846b) && l.a(this.f52847c, c18813a.f52847c) && l.a(this.f52848d, c18813a.f52848d) && this.f52849e == c18813a.f52849e;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f52845a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f52846b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f52847c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        AvatarXConfig avatarXConfig = this.f52848d;
        if (avatarXConfig != null) {
            i = avatarXConfig.hashCode();
        }
        boolean z = this.f52849e;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("HiddenContact(tcId=");
        m8728C.append(this.f52845a);
        m8728C.append(", name=");
        m8728C.append(this.f52846b);
        m8728C.append(", number=");
        m8728C.append(this.f52847c);
        m8728C.append(", avatarXConfig=");
        m8728C.append(this.f52848d);
        m8728C.append(", hasMultipleNumbers=");
        return C22128a.m8590o(m8728C, this.f52849e, ")");
    }
}
