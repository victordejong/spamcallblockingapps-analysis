package p193e.p194a.p1011l;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.b0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/b0.class */
public final class C16624b0 {

    /* renamed from: a */
    public final String f46704a;

    /* renamed from: b */
    public final int f46705b;

    /* renamed from: c */
    public final String f46706c;

    /* renamed from: d */
    public final int f46707d;

    /* renamed from: e */
    public final Integer f46708e;

    /* renamed from: f */
    public final C16830c0 f46709f;

    /* renamed from: g */
    public final String f46710g;

    /* renamed from: h */
    public final String f46711h;

    public C16624b0(String str, int i, String str2, int i2, Integer num, C16830c0 c16830c0, String str3, String str4, int i3) {
        num = (i3 & 16) != 0 ? null : num;
        c16830c0 = (i3 & 32) != 0 ? null : c16830c0;
        str3 = (i3 & 64) != 0 ? null : str3;
        str4 = (i3 & 128) != 0 ? null : str4;
        l.e(str, "title");
        l.e(str2, "description");
        this.f46704a = str;
        this.f46705b = i;
        this.f46706c = str2;
        this.f46707d = i2;
        this.f46708e = num;
        this.f46709f = c16830c0;
        this.f46710g = str3;
        this.f46711h = str4;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16624b0)) {
                return false;
            }
            C16624b0 c16624b0 = (C16624b0) obj;
            return l.a(this.f46704a, c16624b0.f46704a) && this.f46705b == c16624b0.f46705b && l.a(this.f46706c, c16624b0.f46706c) && this.f46707d == c16624b0.f46707d && l.a(this.f46708e, c16624b0.f46708e) && l.a(this.f46709f, c16624b0.f46709f) && l.a(this.f46710g, c16624b0.f46710g) && l.a(this.f46711h, c16624b0.f46711h);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f46704a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.f46705b;
        String str2 = this.f46706c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        int i3 = this.f46707d;
        Integer num = this.f46708e;
        int hashCode3 = num != null ? num.hashCode() : 0;
        C16830c0 c16830c0 = this.f46709f;
        int hashCode4 = c16830c0 != null ? c16830c0.hashCode() : 0;
        String str3 = this.f46710g;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f46711h;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + i3) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumAlert(title=");
        m8728C.append(this.f46704a);
        m8728C.append(", titleColor=");
        m8728C.append(this.f46705b);
        m8728C.append(", description=");
        m8728C.append(this.f46706c);
        m8728C.append(", iconAttr=");
        m8728C.append(this.f46707d);
        m8728C.append(", backgroundDrawable=");
        m8728C.append(this.f46708e);
        m8728C.append(", promo=");
        m8728C.append(this.f46709f);
        m8728C.append(", actionPositive=");
        m8728C.append(this.f46710g);
        m8728C.append(", actionNegative=");
        return C22128a.m8618h(m8728C, this.f46711h, ")");
    }
}
