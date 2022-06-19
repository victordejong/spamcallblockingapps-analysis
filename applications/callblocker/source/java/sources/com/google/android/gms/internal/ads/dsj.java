package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsj.class */
public final class dsj {

    /* renamed from: a */
    private byte[] f15565a;

    /* renamed from: b */
    private int f15566b;

    /* renamed from: c */
    private int f15567c;

    /* renamed from: d */
    private int f15568d = 0;

    public dsj(byte[] bArr, int i, int i2) {
        this.f15565a = bArr;
        this.f15567c = i;
        this.f15566b = i2;
        m8741e();
    }

    /* renamed from: c */
    private final boolean m8743c(int i) {
        return 2 <= i && i < this.f15566b && this.f15565a[i] == 3 && this.f15565a[i - 2] == 0 && this.f15565a[i - 1] == 0;
    }

    /* renamed from: d */
    private final int m8742d() {
        int i = 0;
        int i2 = 0;
        while (!m8748a()) {
            i2++;
        }
        if (i2 > 0) {
            i = m8745b(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    /* renamed from: e */
    private final void m8741e() {
        drz.m8770b(this.f15567c >= 0 && this.f15568d >= 0 && this.f15568d < 8 && (this.f15567c < this.f15566b || (this.f15567c == this.f15566b && this.f15568d == 0)));
    }

    /* renamed from: a */
    public final void m8747a(int i) {
        int i2 = this.f15567c;
        this.f15567c += i / 8;
        this.f15568d += i % 8;
        if (this.f15568d > 7) {
            this.f15567c++;
            this.f15568d -= 8;
        }
        while (true) {
            int i3 = i2 + 1;
            if (i3 > this.f15567c) {
                m8741e();
                return;
            }
            i2 = i3;
            if (m8743c(i3)) {
                this.f15567c++;
                i2 = i3 + 2;
            }
        }
    }

    /* renamed from: a */
    public final boolean m8748a() {
        boolean z = true;
        if (m8745b(1) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final int m8746b() {
        return m8742d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v57 */
    /* renamed from: b */
    public final int m8745b(int i) {
        int i2;
        if (i == 0) {
            i2 = 0;
        } else {
            int i3 = i / 8;
            int i4 = i;
            i2 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = m8743c(this.f15567c + 1) ? this.f15567c + 2 : this.f15567c + 1;
                boolean z = this.f15568d != 0 ? ((this.f15565a[this.f15567c] & 255) << this.f15568d) | ((this.f15565a[i6] & 255) >>> (8 - this.f15568d)) : this.f15565a[this.f15567c];
                int i7 = z == true ? 1 : 0;
                Object[] objArr = z == true ? 1 : 0;
                i4 -= 8;
                i2 |= (i7 & 255) << i4;
                this.f15567c = i6;
            }
            if (i4 > 0) {
                int i8 = this.f15568d + i4;
                byte b = (byte) (255 >> (8 - i4));
                int i9 = m8743c(this.f15567c + 1) ? this.f15567c + 2 : this.f15567c + 1;
                if (i8 > 8) {
                    i2 = ((((this.f15565a[this.f15567c] & 255) << (i8 - 8)) | ((this.f15565a[i9] & 255) >> (16 - i8))) & b) | i2;
                    this.f15567c = i9;
                } else {
                    int i10 = (((this.f15565a[this.f15567c] & 255) >> (8 - i8)) & b) | i2;
                    i2 = i10;
                    if (i8 == 8) {
                        this.f15567c = i9;
                        i2 = i10;
                    }
                }
                this.f15568d = i8 % 8;
            }
            m8741e();
        }
        return i2;
    }

    /* renamed from: c */
    public final int m8744c() {
        int m8742d = m8742d();
        return (m8742d % 2 == 0 ? -1 : 1) * ((m8742d + 1) / 2);
    }
}
