package p193e.p194a.p1011l.p1013c.p1014a;

import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.o2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/o2.class */
public final class C16716o2 {

    /* renamed from: a */
    public final AvatarXConfig f46876a;

    /* renamed from: b */
    public final String f46877b;

    /* renamed from: c */
    public final String f46878c;

    public C16716o2(AvatarXConfig avatarXConfig, String str, String str2) {
        l.e(avatarXConfig, "avatarXConfig");
        l.e(str, AnalyticsConstants.NAME);
        l.e(str2, "text");
        this.f46876a = avatarXConfig;
        this.f46877b = str;
        this.f46878c = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16716o2)) {
                return false;
            }
            C16716o2 c16716o2 = (C16716o2) obj;
            return l.a(this.f46876a, c16716o2.f46876a) && l.a(this.f46877b, c16716o2.f46877b) && l.a(this.f46878c, c16716o2.f46878c);
        }
        return true;
    }

    public int hashCode() {
        AvatarXConfig avatarXConfig = this.f46876a;
        int i = 0;
        int hashCode = avatarXConfig != null ? avatarXConfig.hashCode() : 0;
        String str = this.f46877b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f46878c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Review(avatarXConfig=");
        m8728C.append(this.f46876a);
        m8728C.append(", name=");
        m8728C.append(this.f46877b);
        m8728C.append(", text=");
        return C22128a.m8618h(m8728C, this.f46878c, ")");
    }
}
