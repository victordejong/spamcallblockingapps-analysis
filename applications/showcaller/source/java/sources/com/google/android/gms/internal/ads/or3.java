package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/or3.class */
public final class or3 {

    /* renamed from: a */
    public int f27696a;

    /* renamed from: b */
    public String f27697b;

    /* renamed from: c */
    public int f27698c;

    /* renamed from: d */
    public int f27699d;

    /* renamed from: e */
    public int f27700e;

    /* renamed from: f */
    public int f27701f;

    /* renamed from: g */
    public int f27702g;

    /* renamed from: a */
    public final boolean m12540a(int i) {
        boolean m12174l;
        int i2;
        int i3;
        int i4;
        int i5;
        String[] strArr;
        int[] iArr;
        int m12173m;
        int[] iArr2;
        int i6;
        int[] iArr3;
        int[] iArr4;
        int i7;
        int[] iArr5;
        int[] iArr6;
        m12174l = pr3.m12174l(i);
        if (!m12174l || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        this.f27696a = i2;
        strArr = pr3.f28107a;
        this.f27697b = strArr[3 - i3];
        iArr = pr3.f28108b;
        int i8 = iArr[i5];
        this.f27699d = i8;
        if (i2 == 2) {
            this.f27699d = i8 / 2;
        } else if (i2 == 0) {
            this.f27699d = i8 / 4;
        }
        int i9 = (i >>> 9) & 1;
        m12173m = pr3.m12173m(i2, i3);
        this.f27702g = m12173m;
        if (i3 == 3) {
            if (i2 == 3) {
                iArr6 = pr3.f28109c;
                i7 = iArr6[i4 - 1];
            } else {
                iArr5 = pr3.f28110d;
                i7 = iArr5[i4 - 1];
            }
            this.f27701f = i7;
            this.f27698c = (((i7 * 12) / this.f27699d) + i9) * 4;
        } else {
            int i10 = 144;
            if (i2 == 3) {
                if (i3 == 2) {
                    iArr4 = pr3.f28111e;
                    i6 = iArr4[i4 - 1];
                } else {
                    iArr3 = pr3.f28112f;
                    i6 = iArr3[i4 - 1];
                }
                this.f27701f = i6;
                this.f27698c = ((i6 * 144) / this.f27699d) + i9;
            } else {
                iArr2 = pr3.f28113g;
                int i11 = iArr2[i4 - 1];
                this.f27701f = i11;
                if (i3 == 1) {
                    i10 = 72;
                }
                this.f27698c = ((i10 * i11) / this.f27699d) + i9;
            }
        }
        int i12 = 2;
        if (((i >> 6) & 3) == 3) {
            i12 = 1;
        }
        this.f27700e = i12;
        return true;
    }
}
