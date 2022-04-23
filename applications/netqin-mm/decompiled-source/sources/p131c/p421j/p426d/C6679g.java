package p131c.p421j.p426d;

import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.NativeAd;
import java.util.Iterator;
import java.util.List;
/* renamed from: c.j.d.g */
/* loaded from: classes2-dex2jar.jar:c/j/d/g.class */
public class C6679g {
    public static final int NOT_FOUND = -1;

    /* renamed from: c */
    public int f20618c;

    /* renamed from: a */
    public final int[] f20616a = new int[200];

    /* renamed from: b */
    public final int[] f20617b = new int[200];

    /* renamed from: d */
    public final int[] f20619d = new int[200];

    /* renamed from: e */
    public final int[] f20620e = new int[200];

    /* renamed from: f */
    public final NativeAd[] f20621f = new NativeAd[200];

    /* renamed from: g */
    public int f20622g = 0;

    public C6679g(int[] iArr) {
        this.f20618c = 0;
        int min = Math.min(iArr.length, 200);
        this.f20618c = min;
        System.arraycopy(iArr, 0, this.f20617b, 0, min);
        System.arraycopy(iArr, 0, this.f20616a, 0, this.f20618c);
    }

    /* renamed from: a */
    public static int m20074a(int[] iArr, int i, int i2) {
        int a = m20073a(iArr, 0, i, i2);
        if (a < 0) {
            return a ^ (-1);
        }
        int i3 = iArr[a];
        while (a >= 0 && iArr[a] == i3) {
            a--;
        }
        return a + 1;
    }

    /* renamed from: a */
    public static int m20073a(int[] iArr, int i, int i2, int i3) {
        int i4 = i2 - 1;
        while (i <= i4) {
            int i5 = (i + i4) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i3) {
                i = i5 + 1;
            } else if (i6 <= i3) {
                return i5;
            } else {
                i4 = i5 - 1;
            }
        }
        return i ^ (-1);
    }

    /* renamed from: a */
    public static C6679g m20075a(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        int i;
        List<Integer> a = moPubClientPositioning.m3942a();
        int b = moPubClientPositioning.m3939b();
        int size = b == Integer.MAX_VALUE ? a.size() : 200;
        int[] iArr = new int[size];
        Iterator<Integer> it = a.iterator();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (it.hasNext()) {
                i3 = it.next().intValue() - i2;
                iArr[i2] = i3;
                i2++;
            }
        }
        for (i = i2; i < size; i++) {
            i3 = (i3 + b) - 1;
            iArr[i] = i3;
        }
        return new C6679g(iArr);
    }

    /* renamed from: b */
    public static int m20069b(int[] iArr, int i, int i2) {
        int a = m20073a(iArr, 0, i, i2);
        if (a < 0) {
            return a ^ (-1);
        }
        int i3 = iArr[a];
        while (a < i && iArr[a] == i3) {
            a++;
        }
        return a;
    }

    /* renamed from: c */
    public static C6679g m20068c() {
        return new C6679g(new int[0]);
    }

    /* renamed from: a */
    public int m20078a(int i) {
        if (i == 0) {
            return 0;
        }
        return m20071b(i - 1) + 1;
    }

    /* renamed from: a */
    public int m20077a(int i, int i2) {
        int i3 = this.f20622g;
        int[] iArr = new int[i3];
        int[] iArr2 = new int[i3];
        int i4 = 0;
        for (int i5 = 0; i5 < this.f20622g; i5++) {
            int i6 = this.f20619d[i5];
            int i7 = this.f20620e[i5];
            if (i > i7 || i7 >= i2) {
                i4 = i4;
                if (i4 > 0) {
                    int i8 = i5 - i4;
                    this.f20619d[i8] = i6;
                    this.f20620e[i8] = i7 - i4;
                    NativeAd[] nativeAdArr = this.f20621f;
                    nativeAdArr[i8] = nativeAdArr[i5];
                    i4 = i4;
                }
            } else {
                iArr[i4] = i6;
                iArr2[i4] = i7 - i4;
                this.f20621f[i5].destroy();
                this.f20621f[i5] = null;
                i4++;
            }
        }
        if (i4 == 0) {
            return 0;
        }
        int a = m20074a(this.f20617b, this.f20618c, iArr2[0]);
        for (int i9 = this.f20618c - 1; i9 >= a; i9--) {
            int[] iArr3 = this.f20616a;
            int i10 = i9 + i4;
            iArr3[i10] = iArr3[i9];
            int[] iArr4 = this.f20617b;
            iArr4[i10] = iArr4[i9] - i4;
        }
        for (int i11 = 0; i11 < i4; i11++) {
            int i12 = a + i11;
            this.f20616a[i12] = iArr[i11];
            this.f20617b[i12] = iArr2[i11];
        }
        this.f20618c += i4;
        this.f20622g -= i4;
        return i4;
    }

    /* renamed from: a */
    public void m20079a() {
        int i = this.f20622g;
        if (i != 0) {
            m20077a(0, this.f20620e[i - 1] + 1);
        }
    }

    /* renamed from: a */
    public void m20076a(int i, NativeAd nativeAd) {
        int a = m20074a(this.f20617b, this.f20618c, i);
        if (a == this.f20618c || this.f20617b[a] != i) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempted to insert an ad at an invalid position");
            return;
        }
        int i2 = this.f20616a[a];
        int b = m20069b(this.f20619d, this.f20622g, i2);
        int i3 = this.f20622g;
        if (b < i3) {
            int i4 = i3 - b;
            int[] iArr = this.f20619d;
            int i5 = b + 1;
            System.arraycopy(iArr, b, iArr, i5, i4);
            int[] iArr2 = this.f20620e;
            System.arraycopy(iArr2, b, iArr2, i5, i4);
            NativeAd[] nativeAdArr = this.f20621f;
            System.arraycopy(nativeAdArr, b, nativeAdArr, i5, i4);
        }
        this.f20619d[b] = i2;
        this.f20620e[b] = i;
        this.f20621f[b] = nativeAd;
        this.f20622g++;
        int i6 = (this.f20618c - a) - 1;
        int[] iArr3 = this.f20617b;
        int i7 = a + 1;
        System.arraycopy(iArr3, i7, iArr3, a, i6);
        int[] iArr4 = this.f20616a;
        System.arraycopy(iArr4, i7, iArr4, a, i6);
        this.f20618c--;
        for (int i8 = a; i8 < this.f20618c; i8++) {
            int[] iArr5 = this.f20617b;
            iArr5[i8] = iArr5[i8] + 1;
        }
        for (int i9 = b + 1; i9 < this.f20622g; i9++) {
            int[] iArr6 = this.f20620e;
            iArr6[i9] = iArr6[i9] + 1;
        }
    }

    /* renamed from: b */
    public int m20071b(int i) {
        return i + m20069b(this.f20619d, this.f20622g, i);
    }

    /* renamed from: b */
    public void m20070b(int i, int i2) {
        m20061i(i);
        m20064f(i2);
    }

    /* renamed from: b */
    public int[] m20072b() {
        int i = this.f20622g;
        int[] iArr = new int[i];
        System.arraycopy(this.f20620e, 0, iArr, 0, i);
        return iArr;
    }

    /* renamed from: c */
    public int m20067c(int i) {
        if (i == 0) {
            return 0;
        }
        int d = m20066d(i - 1);
        int i2 = -1;
        if (d != -1) {
            i2 = d + 1;
        }
        return i2;
    }

    /* renamed from: d */
    public int m20066d(int i) {
        int a = m20073a(this.f20620e, 0, this.f20622g, i);
        if (a < 0) {
            return i - (a ^ (-1));
        }
        return -1;
    }

    /* renamed from: e */
    public NativeAd m20065e(int i) {
        int a = m20073a(this.f20620e, 0, this.f20622g, i);
        if (a < 0) {
            return null;
        }
        return this.f20621f[a];
    }

    /* renamed from: f */
    public void m20064f(int i) {
        for (int a = m20074a(this.f20616a, this.f20618c, i); a < this.f20618c; a++) {
            int[] iArr = this.f20616a;
            iArr[a] = iArr[a] + 1;
            int[] iArr2 = this.f20617b;
            iArr2[a] = iArr2[a] + 1;
        }
        for (int a2 = m20074a(this.f20619d, this.f20622g, i); a2 < this.f20622g; a2++) {
            int[] iArr3 = this.f20619d;
            iArr3[a2] = iArr3[a2] + 1;
            int[] iArr4 = this.f20620e;
            iArr4[a2] = iArr4[a2] + 1;
        }
    }

    /* renamed from: g */
    public boolean m20063g(int i) {
        boolean z = false;
        if (m20073a(this.f20620e, 0, this.f20622g, i) >= 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: h */
    public int m20062h(int i) {
        int b = m20069b(this.f20617b, this.f20618c, i);
        if (b == this.f20618c) {
            return -1;
        }
        return this.f20617b[b];
    }

    /* renamed from: i */
    public void m20061i(int i) {
        for (int b = m20069b(this.f20616a, this.f20618c, i); b < this.f20618c; b++) {
            int[] iArr = this.f20616a;
            iArr[b] = iArr[b] - 1;
            int[] iArr2 = this.f20617b;
            iArr2[b] = iArr2[b] - 1;
        }
        for (int b2 = m20069b(this.f20619d, this.f20622g, i); b2 < this.f20622g; b2++) {
            int[] iArr3 = this.f20619d;
            iArr3[b2] = iArr3[b2] - 1;
            int[] iArr4 = this.f20620e;
            iArr4[b2] = iArr4[b2] - 1;
        }
    }

    /* renamed from: j */
    public boolean m20060j(int i) {
        boolean z = false;
        if (m20073a(this.f20617b, 0, this.f20618c, i) >= 0) {
            z = true;
        }
        return z;
    }
}
