package p081h.p203i.p204a.p224e.p259j.p266g;
/* renamed from: h.i.a.e.j.g.a3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/a3.class */
public final class C7542a3 {

    /* renamed from: a */
    public final String f17714a;

    /* renamed from: b */
    public int f17715b = 0;

    public C7542a3(String str) {
        this.f17714a = str;
    }

    /* renamed from: a */
    public final boolean m20373a() {
        return this.f17715b < this.f17714a.length();
    }

    /* renamed from: b */
    public final int m20372b() {
        String str = this.f17714a;
        int i = this.f17715b;
        this.f17715b = i + 1;
        char charAt = str.charAt(i);
        if (charAt < 55296) {
            return charAt;
        }
        int i2 = charAt & 8191;
        int i3 = 13;
        while (true) {
            String str2 = this.f17714a;
            int i4 = this.f17715b;
            this.f17715b = i4 + 1;
            char charAt2 = str2.charAt(i4);
            if (charAt2 < 55296) {
                return i2 | (charAt2 << i3);
            }
            i2 |= (charAt2 & 8191) << i3;
            i3 += 13;
        }
    }
}
