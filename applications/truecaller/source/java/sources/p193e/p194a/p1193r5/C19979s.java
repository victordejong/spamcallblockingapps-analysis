package p193e.p194a.p1193r5;

import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.r5.s */
/* loaded from: classes8-dex2jar.jar:e/a/r5/s.class */
public final class C19979s {

    /* renamed from: a */
    public final String f56493a;

    /* renamed from: b */
    public final String f56494b;

    /* renamed from: c */
    public final long f56495c;

    /* renamed from: d */
    public final AvatarXConfig f56496d;

    public C19979s(String str, String str2, long j, AvatarXConfig avatarXConfig) {
        l.e(str, "title");
        l.e(str2, "subtitle");
        l.e(avatarXConfig, "avatarXConfig");
        this.f56493a = str;
        this.f56494b = str2;
        this.f56495c = j;
        this.f56496d = avatarXConfig;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C19979s)) {
                return false;
            }
            C19979s c19979s = (C19979s) obj;
            return l.a(this.f56493a, c19979s.f56493a) && l.a(this.f56494b, c19979s.f56494b) && this.f56495c == c19979s.f56495c && l.a(this.f56496d, c19979s.f56496d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f56493a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f56494b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f56495c);
        AvatarXConfig avatarXConfig = this.f56496d;
        if (avatarXConfig != null) {
            i = avatarXConfig.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + m34274a) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RevealedProfileView(title=");
        m8728C.append(this.f56493a);
        m8728C.append(", subtitle=");
        m8728C.append(this.f56494b);
        m8728C.append(", timeStamp=");
        m8728C.append(this.f56495c);
        m8728C.append(", avatarXConfig=");
        m8728C.append(this.f56496d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
