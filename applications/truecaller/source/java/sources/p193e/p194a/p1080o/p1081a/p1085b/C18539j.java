package p193e.p194a.p1080o.p1081a.p1085b;

import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.o.a.b.j */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/b/j.class */
public final class C18539j {

    /* renamed from: a */
    public final String f52291a;

    /* renamed from: b */
    public final String f52292b;

    /* renamed from: c */
    public final String f52293c;

    /* renamed from: d */
    public final AvatarXConfig f52294d;

    /* renamed from: e */
    public final boolean f52295e;

    public C18539j(String str, String str2, String str3, AvatarXConfig avatarXConfig, boolean z) {
        l.e(str2, AnalyticsConstants.NAME);
        l.e(str3, "number");
        l.e(avatarXConfig, "avatarXConfig");
        this.f52291a = str;
        this.f52292b = str2;
        this.f52293c = str3;
        this.f52294d = avatarXConfig;
        this.f52295e = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18539j)) {
                return false;
            }
            C18539j c18539j = (C18539j) obj;
            return l.a(this.f52291a, c18539j.f52291a) && l.a(this.f52292b, c18539j.f52292b) && l.a(this.f52293c, c18539j.f52293c) && l.a(this.f52294d, c18539j.f52294d) && this.f52295e == c18539j.f52295e;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f52291a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f52292b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f52293c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        AvatarXConfig avatarXConfig = this.f52294d;
        if (avatarXConfig != null) {
            i = avatarXConfig.hashCode();
        }
        boolean z = this.f52295e;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ViewHiddenContact(tcId=");
        m8728C.append(this.f52291a);
        m8728C.append(", name=");
        m8728C.append(this.f52292b);
        m8728C.append(", number=");
        m8728C.append(this.f52293c);
        m8728C.append(", avatarXConfig=");
        m8728C.append(this.f52294d);
        m8728C.append(", showNumber=");
        return C22128a.m8590o(m8728C, this.f52295e, ")");
    }
}
