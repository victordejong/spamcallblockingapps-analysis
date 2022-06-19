package p134j4;

import java.util.Arrays;
import p029c4.C0821e;
/* renamed from: j4.l1 */
/* loaded from: classes-dex2jar.jar:j4/l1.class */
public final class C3227l1 {

    /* renamed from: a */
    public byte[] f10870a = new byte[4096];

    /* renamed from: b */
    public int f10871b;

    /* renamed from: c */
    public long f10872c;

    /* renamed from: d */
    public long f10873d;

    /* renamed from: e */
    public int f10874e;

    /* renamed from: f */
    public int f10875f;

    /* renamed from: g */
    public int f10876g;

    /* renamed from: h */
    public boolean f10877h;

    /* renamed from: i */
    public String f10878i;

    public C3227l1() {
        m2531c();
    }

    /* renamed from: a */
    public final int m2533a(byte[] bArr, int i, int i2) {
        int m2530d = m2530d(30, bArr, i, i2);
        if (m2530d != -1) {
            if (this.f10872c == -1) {
                long m7329p = C0821e.m7329p(this.f10870a, 0);
                this.f10872c = m7329p;
                if (m7329p == 67324752) {
                    this.f10877h = false;
                    this.f10873d = C0821e.m7329p(this.f10870a, 18);
                    this.f10876g = C0821e.m7330o(this.f10870a, 8);
                    this.f10874e = C0821e.m7330o(this.f10870a, 26);
                    int m7330o = this.f10874e + 30 + C0821e.m7330o(this.f10870a, 28);
                    this.f10875f = m7330o;
                    int length = this.f10870a.length;
                    if (length < m7330o) {
                        do {
                            length += length;
                        } while (length < m7330o);
                        this.f10870a = Arrays.copyOf(this.f10870a, length);
                    }
                } else {
                    this.f10877h = true;
                }
            }
            int m2530d2 = m2530d(this.f10875f, bArr, i + m2530d, i2 - m2530d);
            if (m2530d2 == -1) {
                return -1;
            }
            if (!this.f10877h && this.f10878i == null) {
                this.f10878i = new String(this.f10870a, 30, this.f10874e);
            }
            return m2530d + m2530d2;
        }
        return -1;
    }

    /* renamed from: b */
    public final AbstractC3200e2 m2532b() {
        int i = this.f10871b;
        int i2 = this.f10875f;
        if (i < i2) {
            return new C3190c0(this.f10878i, this.f10873d, this.f10876g, true, this.f10877h, Arrays.copyOf(this.f10870a, i));
        }
        C3190c0 c3190c0 = new C3190c0(this.f10878i, this.f10873d, this.f10876g, false, this.f10877h, Arrays.copyOf(this.f10870a, i2));
        m2531c();
        return c3190c0;
    }

    /* renamed from: c */
    public final void m2531c() {
        this.f10871b = 0;
        this.f10874e = -1;
        this.f10872c = -1L;
        this.f10877h = false;
        this.f10875f = 30;
        this.f10873d = -1L;
        this.f10876g = -1;
        this.f10878i = null;
    }

    /* renamed from: d */
    public final int m2530d(int i, byte[] bArr, int i2, int i3) {
        int i4 = this.f10871b;
        if (i4 < i) {
            int min = Math.min(i3, i - i4);
            System.arraycopy(bArr, i2, this.f10870a, this.f10871b, min);
            int i5 = this.f10871b + min;
            this.f10871b = i5;
            if (i5 >= i) {
                return min;
            }
            return -1;
        }
        return 0;
    }
}
