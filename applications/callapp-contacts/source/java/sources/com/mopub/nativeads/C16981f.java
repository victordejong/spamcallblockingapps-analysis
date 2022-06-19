package com.mopub.nativeads;

import com.mopub.common.logging.MoPubLog;
/* renamed from: com.mopub.nativeads.f */
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/f.class */
final class C16981f {
    public static final int NOT_FOUND = -1;

    /* renamed from: c */
    private final int[] f60169c;

    /* renamed from: d */
    private final int[] f60170d;

    /* renamed from: e */
    private int f60171e;

    /* renamed from: f */
    private final int[] f60172f = new int[200];

    /* renamed from: a */
    final int[] f60167a = new int[200];

    /* renamed from: g */
    private final NativeAd[] f60173g = new NativeAd[200];

    /* renamed from: b */
    int f60168b = 0;

    public C16981f(int[] iArr) {
        int[] iArr2 = new int[200];
        this.f60169c = iArr2;
        int[] iArr3 = new int[200];
        this.f60170d = iArr3;
        this.f60171e = 0;
        int min = Math.min(iArr.length, 200);
        this.f60171e = min;
        System.arraycopy(iArr, 0, iArr3, 0, min);
        System.arraycopy(iArr, 0, iArr2, 0, this.f60171e);
    }

    /* renamed from: a */
    public static int m6108a(int[] iArr, int i, int i2) {
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

    /* renamed from: b */
    private static int m6106b(int[] iArr, int i, int i2) {
        int m6108a = m6108a(iArr, i, i2);
        if (m6108a < 0) {
            return m6108a ^ (-1);
        }
        int i3 = iArr[m6108a];
        while (m6108a >= 0 && iArr[m6108a] == i3) {
            m6108a--;
        }
        return m6108a + 1;
    }

    /* renamed from: c */
    private static int m6104c(int[] iArr, int i, int i2) {
        int m6108a = m6108a(iArr, i, i2);
        if (m6108a < 0) {
            return m6108a ^ (-1);
        }
        int i3 = iArr[m6108a];
        while (m6108a < i && iArr[m6108a] == i3) {
            m6108a++;
        }
        return m6108a;
    }

    /* renamed from: a */
    public final int m6110a(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6 = this.f60168b;
        int[] iArr = new int[i6];
        int[] iArr2 = new int[i6];
        int i7 = 0;
        int i8 = 0;
        while (true) {
            i3 = i8;
            if (i7 >= this.f60168b) {
                break;
            }
            int[] iArr3 = this.f60172f;
            int i9 = iArr3[i7];
            int[] iArr4 = this.f60167a;
            int i10 = iArr4[i7];
            if (i > i10 || i10 >= i2) {
                i5 = i3;
                if (i3 > 0) {
                    int i11 = i7 - i3;
                    iArr3[i11] = i9;
                    iArr4[i11] = i10 - i3;
                    NativeAd[] nativeAdArr = this.f60173g;
                    nativeAdArr[i11] = nativeAdArr[i7];
                    i5 = i3;
                }
            } else {
                iArr[i3] = i9;
                iArr2[i3] = i10 - i3;
                this.f60173g[i7].destroy();
                this.f60173g[i7] = null;
                i5 = i3 + 1;
            }
            i7++;
            i8 = i5;
        }
        if (i3 == 0) {
            return 0;
        }
        int m6106b = m6106b(this.f60170d, this.f60171e, iArr2[0]);
        int i12 = this.f60171e - 1;
        while (true) {
            if (i12 >= m6106b) {
                int[] iArr5 = this.f60169c;
                int i13 = i12 + i3;
                iArr5[i13] = iArr5[i12];
                int[] iArr6 = this.f60170d;
                iArr6[i13] = iArr6[i12] - i3;
                i12--;
            }
        }
        for (i4 = 0; i4 < i3; i4++) {
            int i14 = m6106b + i4;
            this.f60169c[i14] = iArr[i4];
            this.f60170d[i14] = iArr2[i4];
        }
        this.f60171e += i3;
        this.f60168b -= i3;
        return i3;
    }

    /* renamed from: a */
    public final void m6109a(int i, NativeAd nativeAd) {
        int m6106b = m6106b(this.f60170d, this.f60171e, i);
        if (m6106b == this.f60171e || this.f60170d[m6106b] != i) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempted to insert an ad at an invalid position");
            return;
        }
        int i2 = this.f60169c[m6106b];
        int m6104c = m6104c(this.f60172f, this.f60168b, i2);
        int i3 = this.f60168b;
        if (m6104c < i3) {
            int i4 = i3 - m6104c;
            int[] iArr = this.f60172f;
            int i5 = m6104c + 1;
            System.arraycopy(iArr, m6104c, iArr, i5, i4);
            int[] iArr2 = this.f60167a;
            System.arraycopy(iArr2, m6104c, iArr2, i5, i4);
            NativeAd[] nativeAdArr = this.f60173g;
            System.arraycopy(nativeAdArr, m6104c, nativeAdArr, i5, i4);
        }
        this.f60172f[m6104c] = i2;
        this.f60167a[m6104c] = i;
        this.f60173g[m6104c] = nativeAd;
        this.f60168b++;
        int i6 = (this.f60171e - m6106b) - 1;
        int[] iArr3 = this.f60170d;
        int i7 = m6106b + 1;
        System.arraycopy(iArr3, i7, iArr3, m6106b, i6);
        int[] iArr4 = this.f60169c;
        System.arraycopy(iArr4, i7, iArr4, m6106b, i6);
        this.f60171e--;
        for (int i8 = m6106b; i8 < this.f60171e; i8++) {
            int[] iArr5 = this.f60170d;
            iArr5[i8] = iArr5[i8] + 1;
        }
        for (int i9 = m6104c + 1; i9 < this.f60168b; i9++) {
            int[] iArr6 = this.f60167a;
            iArr6[i9] = iArr6[i9] + 1;
        }
    }

    /* renamed from: a */
    public final boolean m6111a(int i) {
        return m6108a(this.f60170d, this.f60171e, i) >= 0;
    }

    /* renamed from: b */
    public final int m6107b(int i) {
        int m6104c = m6104c(this.f60170d, this.f60171e, i);
        if (m6104c == this.f60171e) {
            return -1;
        }
        return this.f60170d[m6104c];
    }

    /* renamed from: c */
    public final NativeAd m6105c(int i) {
        int m6108a = m6108a(this.f60167a, this.f60168b, i);
        if (m6108a < 0) {
            return null;
        }
        return this.f60173g[m6108a];
    }

    /* renamed from: d */
    public final int m6103d(int i) {
        int m6108a = m6108a(this.f60167a, this.f60168b, i);
        if (m6108a < 0) {
            return i - (m6108a ^ (-1));
        }
        return -1;
    }

    /* renamed from: e */
    public final int m6102e(int i) {
        return i + m6104c(this.f60172f, this.f60168b, i);
    }

    /* renamed from: f */
    public final int m6101f(int i) {
        if (i == 0) {
            return 0;
        }
        return m6102e(i - 1) + 1;
    }

    /* renamed from: g */
    public final void m6100g(int i) {
        for (int m6106b = m6106b(this.f60169c, this.f60171e, i); m6106b < this.f60171e; m6106b++) {
            int[] iArr = this.f60169c;
            iArr[m6106b] = iArr[m6106b] + 1;
            int[] iArr2 = this.f60170d;
            iArr2[m6106b] = iArr2[m6106b] + 1;
        }
        for (int m6106b2 = m6106b(this.f60172f, this.f60168b, i); m6106b2 < this.f60168b; m6106b2++) {
            int[] iArr3 = this.f60172f;
            iArr3[m6106b2] = iArr3[m6106b2] + 1;
            int[] iArr4 = this.f60167a;
            iArr4[m6106b2] = iArr4[m6106b2] + 1;
        }
    }

    /* renamed from: h */
    public final void m6099h(int i) {
        for (int m6104c = m6104c(this.f60169c, this.f60171e, i); m6104c < this.f60171e; m6104c++) {
            int[] iArr = this.f60169c;
            iArr[m6104c] = iArr[m6104c] - 1;
            int[] iArr2 = this.f60170d;
            iArr2[m6104c] = iArr2[m6104c] - 1;
        }
        for (int m6104c2 = m6104c(this.f60172f, this.f60168b, i); m6104c2 < this.f60168b; m6104c2++) {
            int[] iArr3 = this.f60172f;
            iArr3[m6104c2] = iArr3[m6104c2] - 1;
            int[] iArr4 = this.f60167a;
            iArr4[m6104c2] = iArr4[m6104c2] - 1;
        }
    }
}
