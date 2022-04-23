package p131c.p161d.p170b.p224d.p252g.p255c;
/* renamed from: c.d.b.d.g.c.n1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/n1.class */
public final class C4386n1 {

    /* renamed from: a */
    public final String f16599a;

    /* renamed from: b */
    public int f16600b = 0;

    public C4386n1(String str) {
        this.f16599a = str;
    }

    /* renamed from: a */
    public final boolean m25751a() {
        return this.f16600b < this.f16599a.length();
    }

    /* renamed from: b */
    public final int m25750b() {
        String str = this.f16599a;
        int i = this.f16600b;
        this.f16600b = i + 1;
        char charAt = str.charAt(i);
        if (charAt < 55296) {
            return charAt;
        }
        int i2 = charAt & 8191;
        int i3 = 13;
        while (true) {
            String str2 = this.f16599a;
            int i4 = this.f16600b;
            this.f16600b = i4 + 1;
            char charAt2 = str2.charAt(i4);
            if (charAt2 < 55296) {
                return i2 | (charAt2 << i3);
            }
            i2 |= (charAt2 & 8191) << i3;
            i3 += 13;
        }
    }
}
