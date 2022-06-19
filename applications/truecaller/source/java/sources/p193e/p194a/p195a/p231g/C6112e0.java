package p193e.p194a.p195a.p231g;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.g.e0 */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/e0.class */
public final class C6112e0 {

    /* renamed from: a */
    public final long f20290a;

    /* renamed from: b */
    public final long f20291b;

    /* renamed from: c */
    public final String f20292c;

    /* renamed from: d */
    public final String f20293d;

    /* renamed from: e */
    public final long f20294e;

    /* renamed from: f */
    public final String f20295f;

    /* renamed from: g */
    public final int f20296g;

    /* renamed from: h */
    public final int f20297h;

    /* renamed from: i */
    public final int f20298i;

    /* renamed from: j */
    public final String f20299j;

    /* renamed from: k */
    public final String f20300k;

    /* renamed from: l */
    public final String f20301l;

    public C6112e0(long j, long j2, String str, String str2, long j3, String str3, int i, int i2, int i3, String str4, String str5, String str6) {
        l.e(str2, "normalizedNumber");
        this.f20290a = j;
        this.f20291b = j2;
        this.f20292c = str;
        this.f20293d = str2;
        this.f20294e = j3;
        this.f20295f = str3;
        this.f20296g = i;
        this.f20297h = i2;
        this.f20298i = i3;
        this.f20299j = str4;
        this.f20300k = str5;
        this.f20301l = str6;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6112e0)) {
                return false;
            }
            C6112e0 c6112e0 = (C6112e0) obj;
            return this.f20290a == c6112e0.f20290a && this.f20291b == c6112e0.f20291b && l.a(this.f20292c, c6112e0.f20292c) && l.a(this.f20293d, c6112e0.f20293d) && this.f20294e == c6112e0.f20294e && l.a(this.f20295f, c6112e0.f20295f) && this.f20296g == c6112e0.f20296g && this.f20297h == c6112e0.f20297h && this.f20298i == c6112e0.f20298i && l.a(this.f20299j, c6112e0.f20299j) && l.a(this.f20300k, c6112e0.f20300k) && l.a(this.f20301l, c6112e0.f20301l);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f20290a);
        int m34274a2 = C4876d.m34274a(this.f20291b);
        String str = this.f20292c;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f20293d;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        int m34274a3 = C4876d.m34274a(this.f20294e);
        String str3 = this.f20295f;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        int i2 = this.f20296g;
        int i3 = this.f20297h;
        int i4 = this.f20298i;
        String str4 = this.f20299j;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f20300k;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f20301l;
        if (str6 != null) {
            i = str6.hashCode();
        }
        return (((((((((((((((((((((m34274a * 31) + m34274a2) * 31) + hashCode) * 31) + hashCode2) * 31) + m34274a3) * 31) + hashCode3) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UnreadConversation(id=");
        m8728C.append(this.f20290a);
        m8728C.append(", date=");
        m8728C.append(this.f20291b);
        m8728C.append(", name=");
        m8728C.append(this.f20292c);
        m8728C.append(", normalizedNumber=");
        m8728C.append(this.f20293d);
        m8728C.append(", pbId=");
        m8728C.append(this.f20294e);
        m8728C.append(", imageUrl=");
        m8728C.append(this.f20295f);
        m8728C.append(", participantType=");
        m8728C.append(this.f20296g);
        m8728C.append(", filter=");
        m8728C.append(this.f20297h);
        m8728C.append(", splitCriteria=");
        m8728C.append(this.f20298i);
        m8728C.append(", imGroupId=");
        m8728C.append(this.f20299j);
        m8728C.append(", imGroupTitle=");
        m8728C.append(this.f20300k);
        m8728C.append(", imGroupAvatar=");
        return C22128a.m8618h(m8728C, this.f20301l, ")");
    }
}
