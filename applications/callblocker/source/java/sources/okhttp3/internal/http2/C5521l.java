package okhttp3.internal.http2;

import java.util.Arrays;
/* renamed from: okhttp3.internal.http2.l */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/l.class */
public final class C5521l {

    /* renamed from: a */
    private int f23061a;

    /* renamed from: b */
    private final int[] f23062b = new int[10];

    /* renamed from: a */
    public C5521l m369a(int i, int i2) {
        if (i >= 0 && i < this.f23062b.length) {
            this.f23061a = (1 << i) | this.f23061a;
            this.f23062b[i] = i2;
        }
        return this;
    }

    /* renamed from: a */
    public void m371a() {
        this.f23061a = 0;
        Arrays.fill(this.f23062b, 0);
    }

    /* renamed from: a */
    public void m368a(C5521l c5521l) {
        for (int i = 0; i < 10; i++) {
            if (c5521l.m370a(i)) {
                m369a(i, c5521l.m366b(i));
            }
        }
    }

    /* renamed from: a */
    public boolean m370a(int i) {
        boolean z = true;
        if (((1 << i) & this.f23061a) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public int m367b() {
        return Integer.bitCount(this.f23061a);
    }

    /* renamed from: b */
    public int m366b(int i) {
        return this.f23062b[i];
    }

    /* renamed from: c */
    public int m365c() {
        return (2 & this.f23061a) != 0 ? this.f23062b[1] : -1;
    }

    /* renamed from: c */
    public int m364c(int i) {
        if ((16 & this.f23061a) != 0) {
            i = this.f23062b[4];
        }
        return i;
    }

    /* renamed from: d */
    public int m363d() {
        return (128 & this.f23061a) != 0 ? this.f23062b[7] : 65535;
    }

    /* renamed from: d */
    public int m362d(int i) {
        if ((32 & this.f23061a) != 0) {
            i = this.f23062b[5];
        }
        return i;
    }
}
