package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsh.class */
public final class dsh {

    /* renamed from: a */
    private byte[] f15551a;

    /* renamed from: b */
    private int f15552b;

    /* renamed from: c */
    private int f15553c;

    /* renamed from: d */
    private int f15554d;

    public dsh() {
    }

    public dsh(byte[] bArr) {
        this(bArr, bArr.length);
    }

    private dsh(byte[] bArr, int i) {
        this.f15551a = bArr;
        this.f15554d = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* renamed from: a */
    public final int m8749a(int i) {
        int i2;
        if (i == 0) {
            i2 = 0;
        } else {
            int i3 = i / 8;
            int i4 = i;
            i2 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                boolean z = this.f15553c != 0 ? ((this.f15551a[this.f15552b] & 255) << this.f15553c) | ((this.f15551a[this.f15552b + 1] & 255) >>> (8 - this.f15553c)) : this.f15551a[this.f15552b];
                int i6 = z == true ? 1 : 0;
                Object[] objArr = z == true ? 1 : 0;
                i4 -= 8;
                i2 |= (i6 & 255) << i4;
                this.f15552b++;
            }
            if (i4 > 0) {
                int i7 = this.f15553c + i4;
                byte b = (byte) (255 >> (8 - i4));
                if (i7 > 8) {
                    i2 = (b & (((this.f15551a[this.f15552b] & 255) << (i7 - 8)) | ((this.f15551a[this.f15552b + 1] & 255) >> (16 - i7)))) | i2;
                    this.f15552b++;
                } else {
                    int i8 = (b & ((this.f15551a[this.f15552b] & 255) >> (8 - i7))) | i2;
                    i2 = i8;
                    if (i7 == 8) {
                        this.f15552b++;
                        i2 = i8;
                    }
                }
                this.f15553c = i7 % 8;
            }
            drz.m8770b(this.f15552b >= 0 && this.f15553c >= 0 && this.f15553c < 8 && (this.f15552b < this.f15554d || (this.f15552b == this.f15554d && this.f15553c == 0)));
        }
        return i2;
    }
}
