package p193e.p194a.p195a.p231g.p234l0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.g.l0.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/l0/b.class */
public final class C6226b {

    /* renamed from: a */
    public final String f20862a;

    /* renamed from: b */
    public final int f20863b;

    /* renamed from: c */
    public final long f20864c;

    /* renamed from: d */
    public final long f20865d;

    /* renamed from: e */
    public final String f20866e;

    /* renamed from: f */
    public final String f20867f;

    /* renamed from: g */
    public final String f20868g;

    /* renamed from: h */
    public final long f20869h;

    public C6226b(String str, int i, long j, long j2, String str2, String str3, String str4, long j3) {
        l.e(str, "peerId");
        this.f20862a = str;
        this.f20863b = i;
        this.f20864c = j;
        this.f20865d = j2;
        this.f20866e = str2;
        this.f20867f = str3;
        this.f20868g = str4;
        this.f20869h = j3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C6226b)) {
                return false;
            }
            C6226b c6226b = (C6226b) obj;
            return l.a(this.f20862a, c6226b.f20862a) && this.f20863b == c6226b.f20863b && this.f20864c == c6226b.f20864c && this.f20865d == c6226b.f20865d && l.a(this.f20866e, c6226b.f20866e) && l.a(this.f20867f, c6226b.f20867f) && l.a(this.f20868g, c6226b.f20868g) && this.f20869h == c6226b.f20869h;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f20862a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.f20863b;
        int m34274a = C4876d.m34274a(this.f20864c);
        int m34274a2 = C4876d.m34274a(this.f20865d);
        String str2 = this.f20866e;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f20867f;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f20868g;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((((((hashCode * 31) + i2) * 31) + m34274a) * 31) + m34274a2) * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + C4876d.m34274a(this.f20869h);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ImGroupReport(peerId=");
        m8728C.append(this.f20862a);
        m8728C.append(", type=");
        m8728C.append(this.f20863b);
        m8728C.append(", date=");
        m8728C.append(this.f20864c);
        m8728C.append(", seqNumber=");
        m8728C.append(this.f20865d);
        m8728C.append(", name=");
        m8728C.append(this.f20866e);
        m8728C.append(", normalizedNumber=");
        m8728C.append(this.f20867f);
        m8728C.append(", imageUrl=");
        m8728C.append(this.f20868g);
        m8728C.append(", phonebookId=");
        return C22128a.m8693K2(m8728C, this.f20869h, ")");
    }
}
