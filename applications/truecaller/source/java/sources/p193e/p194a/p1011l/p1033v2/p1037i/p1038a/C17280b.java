package p193e.p194a.p1011l.p1033v2.p1037i.p1038a;

import java.io.Serializable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.v2.i.a.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/i/a/b.class */
public final class C17280b implements Serializable {

    /* renamed from: a */
    public final String f48479a;

    /* renamed from: b */
    public final String f48480b;

    /* renamed from: c */
    public final String f48481c;

    /* renamed from: d */
    public final Integer f48482d;

    /* renamed from: e */
    public final Integer f48483e;

    /* renamed from: f */
    public final boolean f48484f;

    /* renamed from: g */
    public final Integer f48485g;

    /* renamed from: h */
    public final String f48486h;

    public C17280b(String str, String str2, String str3, Integer num, Integer num2, boolean z, Integer num3, String str4) {
        l.e(str, "title");
        this.f48479a = str;
        this.f48480b = str2;
        this.f48481c = str3;
        this.f48482d = num;
        this.f48483e = num2;
        this.f48484f = z;
        this.f48485g = num3;
        this.f48486h = str4;
    }

    public /* synthetic */ C17280b(String str, String str2, String str3, Integer num, Integer num2, boolean z, Integer num3, String str4, int i) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : num, (i & 16) != 0 ? null : num2, (i & 32) != 0 ? false : z, (i & 64) != 0 ? null : num3, (i & 128) != 0 ? null : str4);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17280b)) {
                return false;
            }
            C17280b c17280b = (C17280b) obj;
            return l.a(this.f48479a, c17280b.f48479a) && l.a(this.f48480b, c17280b.f48480b) && l.a(this.f48481c, c17280b.f48481c) && l.a(this.f48482d, c17280b.f48482d) && l.a(this.f48483e, c17280b.f48483e) && this.f48484f == c17280b.f48484f && l.a(this.f48485g, c17280b.f48485g) && l.a(this.f48486h, c17280b.f48486h);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f48479a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f48480b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f48481c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        Integer num = this.f48482d;
        int hashCode4 = num != null ? num.hashCode() : 0;
        Integer num2 = this.f48483e;
        int hashCode5 = num2 != null ? num2.hashCode() : 0;
        boolean z = this.f48484f;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        Integer num3 = this.f48485g;
        int hashCode6 = num3 != null ? num3.hashCode() : 0;
        String str4 = this.f48486h;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i2) * 31) + hashCode6) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SubscriptionButton(title=");
        m8728C.append(this.f48479a);
        m8728C.append(", profit=");
        m8728C.append(this.f48480b);
        m8728C.append(", subTitle=");
        m8728C.append(this.f48481c);
        m8728C.append(", textColor=");
        m8728C.append(this.f48482d);
        m8728C.append(", backgroundDrawableRes=");
        m8728C.append(this.f48483e);
        m8728C.append(", isGold=");
        m8728C.append(this.f48484f);
        m8728C.append(", discountPercentage=");
        m8728C.append(this.f48485g);
        m8728C.append(", note=");
        return C22128a.m8618h(m8728C, this.f48486h, ")");
    }
}
