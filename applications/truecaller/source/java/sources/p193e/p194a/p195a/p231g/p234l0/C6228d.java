package p193e.p194a.p195a.p231g.p234l0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.g.l0.d */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/l0/d.class */
public final class C6228d {

    /* renamed from: a */
    public final String f20897a;

    /* renamed from: b */
    public final int f20898b;

    /* renamed from: c */
    public final int f20899c;

    /* renamed from: d */
    public final int f20900d;

    /* renamed from: e */
    public final int f20901e;

    /* renamed from: f */
    public final int f20902f;

    /* renamed from: g */
    public final String f20903g;

    public C6228d(String str, int i, int i2, int i3, int i4, int i5, String str2) {
        this.f20897a = str;
        this.f20898b = i;
        this.f20899c = i2;
        this.f20900d = i3;
        this.f20901e = i4;
        this.f20902f = i5;
        this.f20903g = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6228d)) {
                return false;
            }
            C6228d c6228d = (C6228d) obj;
            return l.a(this.f20897a, c6228d.f20897a) && this.f20898b == c6228d.f20898b && this.f20899c == c6228d.f20899c && this.f20900d == c6228d.f20900d && this.f20901e == c6228d.f20901e && this.f20902f == c6228d.f20902f && l.a(this.f20903g, c6228d.f20903g);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f20897a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.f20898b;
        int i3 = this.f20899c;
        int i4 = this.f20900d;
        int i5 = this.f20901e;
        int i6 = this.f20902f;
        String str2 = this.f20903g;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((((((((hashCode * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MessageNotificationAnalytics(groupId=");
        m8728C.append(this.f20897a);
        m8728C.append(", messageTransport=");
        m8728C.append(this.f20898b);
        m8728C.append(", participantIsTopSpammers=");
        m8728C.append(this.f20899c);
        m8728C.append(", participantBusinessState=");
        m8728C.append(this.f20900d);
        m8728C.append(", participantFilterAction=");
        m8728C.append(this.f20901e);
        m8728C.append(", participantType=");
        m8728C.append(this.f20902f);
        m8728C.append(", spamType=");
        return C22128a.m8618h(m8728C, this.f20903g, ")");
    }
}
