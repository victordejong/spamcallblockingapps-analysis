package okhttp3.internal.http2;

import java.util.Arrays;
/* renamed from: okhttp3.internal.http2.l */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/l.class */
public final class C2071l {

    /* renamed from: a */
    private int f5287a;

    /* renamed from: b */
    private final int[] f5288b = new int[10];

    /* renamed from: a */
    public C2071l m2051a(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.f5288b;
            if (i < iArr.length) {
                this.f5287a = (1 << i) | this.f5287a;
                iArr[i] = i2;
            }
        }
        return this;
    }

    /* renamed from: a */
    public void m2053a() {
        this.f5287a = 0;
        Arrays.fill(this.f5288b, 0);
    }

    /* renamed from: a */
    public void m2050a(C2071l c2071l) {
        for (int i = 0; i < 10; i++) {
            if (c2071l.m2052a(i)) {
                m2051a(i, c2071l.m2048b(i));
            }
        }
    }

    /* renamed from: a */
    public boolean m2052a(int i) {
        boolean z = true;
        if (((1 << i) & this.f5287a) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public int m2049b() {
        return Integer.bitCount(this.f5287a);
    }

    /* renamed from: b */
    public int m2048b(int i) {
        return this.f5288b[i];
    }

    /* renamed from: c */
    public int m2047c() {
        return (this.f5287a & 2) != 0 ? this.f5288b[1] : -1;
    }

    /* renamed from: c */
    public int m2046c(int i) {
        if ((this.f5287a & 16) != 0) {
            i = this.f5288b[4];
        }
        return i;
    }

    /* renamed from: d */
    public int m2045d() {
        return (this.f5287a & 128) != 0 ? this.f5288b[7] : 65535;
    }

    /* renamed from: d */
    public int m2044d(int i) {
        if ((this.f5287a & 32) != 0) {
            i = this.f5288b[5];
        }
        return i;
    }
}
