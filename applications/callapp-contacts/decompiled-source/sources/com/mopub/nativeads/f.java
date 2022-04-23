package com.mopub.nativeads;

import com.mopub.common.logging.MoPubLog;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/f.class */
final class f {
    public static final int NOT_FOUND = -1;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f34682c;

    /* renamed from: d  reason: collision with root package name */
    private final int[] f34683d;
    private int e;
    private final int[] f = new int[200];

    /* renamed from: a  reason: collision with root package name */
    final int[] f34680a = new int[200];
    private final NativeAd[] g = new NativeAd[200];

    /* renamed from: b  reason: collision with root package name */
    int f34681b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(int[] iArr) {
        int[] iArr2 = new int[200];
        this.f34682c = iArr2;
        int[] iArr3 = new int[200];
        this.f34683d = iArr3;
        this.e = 0;
        int min = Math.min(iArr.length, 200);
        this.e = min;
        System.arraycopy(iArr, 0, iArr3, 0, min);
        System.arraycopy(iArr, 0, iArr2, 0, this.e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int[] iArr, int i, int i2) {
        int i3 = i - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i2) {
                i4 = i5 + 1;
            } else if (i6 <= i2) {
                return i5;
            } else {
                i3 = i5 - 1;
            }
        }
        return i4 ^ (-1);
    }

    private static int b(int[] iArr, int i, int i2) {
        int a2 = a(iArr, i, i2);
        if (a2 < 0) {
            return a2 ^ (-1);
        }
        int i3 = iArr[a2];
        while (a2 >= 0 && iArr[a2] == i3) {
            a2--;
        }
        return a2 + 1;
    }

    private static int c(int[] iArr, int i, int i2) {
        int a2 = a(iArr, i, i2);
        if (a2 < 0) {
            return a2 ^ (-1);
        }
        int i3 = iArr[a2];
        while (a2 < i && iArr[a2] == i3) {
            a2++;
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(int i, int i2) {
        int i3 = this.f34681b;
        int[] iArr = new int[i3];
        int[] iArr2 = new int[i3];
        int i4 = 0;
        for (int i5 = 0; i5 < this.f34681b; i5++) {
            int[] iArr3 = this.f;
            int i6 = iArr3[i5];
            int[] iArr4 = this.f34680a;
            int i7 = iArr4[i5];
            if (i > i7 || i7 >= i2) {
                i4 = i4;
                if (i4 > 0) {
                    int i8 = i5 - i4;
                    iArr3[i8] = i6;
                    iArr4[i8] = i7 - i4;
                    NativeAd[] nativeAdArr = this.g;
                    nativeAdArr[i8] = nativeAdArr[i5];
                    i4 = i4;
                }
            } else {
                iArr[i4] = i6;
                iArr2[i4] = i7 - i4;
                this.g[i5].destroy();
                this.g[i5] = null;
                i4++;
            }
        }
        if (i4 == 0) {
            return 0;
        }
        int b2 = b(this.f34683d, this.e, iArr2[0]);
        for (int i9 = this.e - 1; i9 >= b2; i9--) {
            int[] iArr5 = this.f34682c;
            int i10 = i9 + i4;
            iArr5[i10] = iArr5[i9];
            int[] iArr6 = this.f34683d;
            iArr6[i10] = iArr6[i9] - i4;
        }
        for (int i11 = 0; i11 < i4; i11++) {
            int i12 = b2 + i11;
            this.f34682c[i12] = iArr[i11];
            this.f34683d[i12] = iArr2[i11];
        }
        this.e += i4;
        this.f34681b -= i4;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, NativeAd nativeAd) {
        int b2 = b(this.f34683d, this.e, i);
        if (b2 == this.e || this.f34683d[b2] != i) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempted to insert an ad at an invalid position");
            return;
        }
        int i2 = this.f34682c[b2];
        int c2 = c(this.f, this.f34681b, i2);
        int i3 = this.f34681b;
        if (c2 < i3) {
            int i4 = i3 - c2;
            int[] iArr = this.f;
            int i5 = c2 + 1;
            System.arraycopy(iArr, c2, iArr, i5, i4);
            int[] iArr2 = this.f34680a;
            System.arraycopy(iArr2, c2, iArr2, i5, i4);
            NativeAd[] nativeAdArr = this.g;
            System.arraycopy(nativeAdArr, c2, nativeAdArr, i5, i4);
        }
        this.f[c2] = i2;
        this.f34680a[c2] = i;
        this.g[c2] = nativeAd;
        this.f34681b++;
        int i6 = (this.e - b2) - 1;
        int[] iArr3 = this.f34683d;
        int i7 = b2 + 1;
        System.arraycopy(iArr3, i7, iArr3, b2, i6);
        int[] iArr4 = this.f34682c;
        System.arraycopy(iArr4, i7, iArr4, b2, i6);
        this.e--;
        for (int i8 = b2; i8 < this.e; i8++) {
            int[] iArr5 = this.f34683d;
            iArr5[i8] = iArr5[i8] + 1;
        }
        for (int i9 = c2 + 1; i9 < this.f34681b; i9++) {
            int[] iArr6 = this.f34680a;
            iArr6[i9] = iArr6[i9] + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(int i) {
        return a(this.f34683d, this.e, i) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(int i) {
        int c2 = c(this.f34683d, this.e, i);
        if (c2 == this.e) {
            return -1;
        }
        return this.f34683d[c2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final NativeAd c(int i) {
        int a2 = a(this.f34680a, this.f34681b, i);
        if (a2 < 0) {
            return null;
        }
        return this.g[a2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int d(int i) {
        int a2 = a(this.f34680a, this.f34681b, i);
        if (a2 < 0) {
            return i - (a2 ^ (-1));
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int e(int i) {
        return i + c(this.f, this.f34681b, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int f(int i) {
        if (i == 0) {
            return 0;
        }
        return e(i - 1) + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(int i) {
        for (int b2 = b(this.f34682c, this.e, i); b2 < this.e; b2++) {
            int[] iArr = this.f34682c;
            iArr[b2] = iArr[b2] + 1;
            int[] iArr2 = this.f34683d;
            iArr2[b2] = iArr2[b2] + 1;
        }
        for (int b3 = b(this.f, this.f34681b, i); b3 < this.f34681b; b3++) {
            int[] iArr3 = this.f;
            iArr3[b3] = iArr3[b3] + 1;
            int[] iArr4 = this.f34680a;
            iArr4[b3] = iArr4[b3] + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h(int i) {
        for (int c2 = c(this.f34682c, this.e, i); c2 < this.e; c2++) {
            int[] iArr = this.f34682c;
            iArr[c2] = iArr[c2] - 1;
            int[] iArr2 = this.f34683d;
            iArr2[c2] = iArr2[c2] - 1;
        }
        for (int c3 = c(this.f, this.f34681b, i); c3 < this.f34681b; c3++) {
            int[] iArr3 = this.f;
            iArr3[c3] = iArr3[c3] - 1;
            int[] iArr4 = this.f34680a;
            iArr4[c3] = iArr4[c3] - 1;
        }
    }
}
