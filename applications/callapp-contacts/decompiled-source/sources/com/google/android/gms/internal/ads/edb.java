package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edb.class */
public final class edb {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f27656a;

    /* renamed from: b  reason: collision with root package name */
    private int f27657b;

    /* renamed from: c  reason: collision with root package name */
    private int f27658c;

    /* renamed from: d  reason: collision with root package name */
    private int f27659d = 0;

    public edb(byte[] bArr, int i, int i2) {
        this.f27656a = bArr;
        this.f27658c = i;
        this.f27657b = i2;
        d();
    }

    private final boolean c(int i) {
        if (2 > i || i >= this.f27657b) {
            return false;
        }
        byte[] bArr = this.f27656a;
        return bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0;
    }

    private final void d() {
        int i;
        int i2;
        int i3 = this.f27658c;
        ecr.b(i3 >= 0 && (i = this.f27659d) >= 0 && i < 8 && (i3 < (i2 = this.f27657b) || (i3 == i2 && i == 0)));
    }

    public final void a(int i) {
        int i2 = this.f27658c;
        int i3 = (i / 8) + i2;
        this.f27658c = i3;
        int i4 = this.f27659d + (i % 8);
        this.f27659d = i4;
        int i5 = i2;
        if (i4 > 7) {
            this.f27658c = i3 + 1;
            this.f27659d = i4 - 8;
            i5 = i2;
        }
        while (true) {
            int i6 = i5 + 1;
            if (i6 <= this.f27658c) {
                i5 = i6;
                if (c(i6)) {
                    this.f27658c++;
                    i5 = i6 + 2;
                }
            } else {
                d();
                return;
            }
        }
    }

    public final boolean a() {
        return b(1) == 1;
    }

    public final int b() {
        int c2 = c();
        return (c2 % 2 == 0 ? -1 : 1) * ((c2 + 1) / 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49 */
    public final int b(int i) {
        boolean z;
        if (i == 0) {
            return 0;
        }
        int i2 = i / 8;
        int i3 = 0;
        int i4 = i;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = c(this.f27658c + 1) ? this.f27658c + 2 : this.f27658c + 1;
            int i7 = this.f27659d;
            if (i7 != 0) {
                byte[] bArr = this.f27656a;
                z = ((bArr[i6] & 255) >>> (8 - i7)) | ((bArr[this.f27658c] & 255) << i7);
            } else {
                z = this.f27656a[this.f27658c];
            }
            i4 -= 8;
            int i8 = z == true ? 1 : 0;
            char c2 = z == true ? 1 : 0;
            i3 |= (255 & i8) << i4;
            this.f27658c = i6;
        }
        int i9 = i3;
        if (i4 > 0) {
            int i10 = this.f27659d + i4;
            byte b2 = (byte) (255 >> (8 - i4));
            int i11 = c(this.f27658c + 1) ? this.f27658c + 2 : this.f27658c + 1;
            if (i10 > 8) {
                byte[] bArr2 = this.f27656a;
                i9 = (b2 & (((255 & bArr2[i11]) >> (16 - i10)) | ((bArr2[this.f27658c] & 255) << (i10 - 8)))) | i3;
                this.f27658c = i11;
            } else {
                int i12 = (b2 & ((255 & this.f27656a[this.f27658c]) >> (8 - i10))) | i3;
                i9 = i12;
                if (i10 == 8) {
                    this.f27658c = i11;
                    i9 = i12;
                }
            }
            this.f27659d = i10 % 8;
        }
        d();
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c() {
        int i = 0;
        int i2 = 0;
        while (!a()) {
            i2++;
        }
        if (i2 > 0) {
            i = b(i2);
        }
        return ((1 << i2) - 1) + i;
    }
}
