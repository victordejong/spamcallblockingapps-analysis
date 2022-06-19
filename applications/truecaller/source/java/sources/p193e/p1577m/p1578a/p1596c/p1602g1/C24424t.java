package p193e.p1577m.p1578a.p1596c.p1602g1;

import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.g1.t */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/t.class */
public final class C24424t {

    /* renamed from: a */
    public final byte[] f68128a;

    /* renamed from: b */
    public final int f68129b;

    /* renamed from: c */
    public int f68130c;

    /* renamed from: d */
    public int f68131d;

    public C24424t(byte[] bArr) {
        this.f68128a = bArr;
        this.f68129b = bArr.length;
    }

    /* renamed from: a */
    public boolean m5141a() {
        boolean z = (((this.f68128a[this.f68130c] & 255) >> this.f68131d) & 1) == 1;
        m5139c(1);
        return z;
    }

    /* renamed from: b */
    public int m5140b(int i) {
        int i2 = this.f68130c;
        int min = Math.min(i, 8 - this.f68131d);
        int i3 = i2 + 1;
        int i4 = ((this.f68128a[i2] & 255) >> this.f68131d) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.f68128a[i3] & 255) << min;
            min += 8;
            i3++;
        }
        m5139c(i);
        return i4 & ((-1) >>> (32 - i));
    }

    /* renamed from: c */
    public void m5139c(int i) {
        boolean z;
        int i2 = i / 8;
        int i3 = this.f68130c + i2;
        this.f68130c = i3;
        int i4 = (i - (i2 * 8)) + this.f68131d;
        this.f68131d = i4;
        if (i4 > 7) {
            this.f68130c = i3 + 1;
            this.f68131d = i4 - 8;
        }
        int i5 = this.f68130c;
        if (i5 >= 0) {
            int i6 = this.f68129b;
            z = true;
            if (i5 >= i6) {
                if (i5 == i6 && this.f68131d == 0) {
                    z = true;
                }
            }
            C26232y.m2286x(z);
        }
        z = false;
        C26232y.m2286x(z);
    }
}
