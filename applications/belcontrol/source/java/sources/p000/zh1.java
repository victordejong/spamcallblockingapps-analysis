package p000;

import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.NativeAd;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.asn1.x509.DisplayText;
/* renamed from: zh1 */
/* loaded from: classes3-dex2jar.jar:zh1.class */
public class zh1 {
    public static final int NOT_FOUND = -1;

    /* renamed from: a */
    public final int[] f8819a;

    /* renamed from: b */
    public final int[] f8820b;

    /* renamed from: c */
    public int f8821c;

    /* renamed from: d */
    public final int[] f8822d = new int[DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE];

    /* renamed from: e */
    public final int[] f8823e = new int[DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE];

    /* renamed from: f */
    public final NativeAd[] f8824f = new NativeAd[DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE];

    /* renamed from: g */
    public int f8825g = 0;

    public zh1(int[] iArr) {
        int[] iArr2 = new int[DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE];
        this.f8819a = iArr2;
        int[] iArr3 = new int[DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE];
        this.f8820b = iArr3;
        this.f8821c = 0;
        int min = Math.min(iArr.length, (int) DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE);
        this.f8821c = min;
        System.arraycopy(iArr, 0, iArr3, 0, min);
        System.arraycopy(iArr, 0, iArr2, 0, this.f8821c);
    }

    /* renamed from: a */
    public static int m26a(int[] iArr, int i, int i2, int i3) {
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

    /* renamed from: b */
    public static int m25b(int[] iArr, int i, int i2) {
        int m26a = m26a(iArr, 0, i, i2);
        if (m26a < 0) {
            return m26a ^ (-1);
        }
        int i3 = iArr[m26a];
        while (m26a >= 0 && iArr[m26a] == i3) {
            m26a--;
        }
        return m26a + 1;
    }

    /* renamed from: c */
    public static int m24c(int[] iArr, int i, int i2) {
        int m26a = m26a(iArr, 0, i, i2);
        if (m26a < 0) {
            return m26a ^ (-1);
        }
        int i3 = iArr[m26a];
        while (m26a < i && iArr[m26a] == i3) {
            m26a++;
        }
        return m26a;
    }

    /* renamed from: f */
    public static zh1 m21f() {
        return new zh1(new int[0]);
    }

    /* renamed from: g */
    public static zh1 m20g(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        int i;
        List<Integer> m3313d = moPubClientPositioning.m3313d();
        int m3312e = moPubClientPositioning.m3312e();
        int size = m3312e == Integer.MAX_VALUE ? m3313d.size() : 200;
        int[] iArr = new int[size];
        Iterator<Integer> it = m3313d.iterator();
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
            i3 = (i3 + m3312e) - 1;
            iArr[i] = i3;
        }
        return new zh1(iArr);
    }

    /* renamed from: d */
    public void m23d() {
        int i = this.f8825g;
        if (i == 0) {
            return;
        }
        m22e(0, this.f8823e[i - 1] + 1);
    }

    /* renamed from: e */
    public int m22e(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6 = this.f8825g;
        int[] iArr = new int[i6];
        int[] iArr2 = new int[i6];
        int i7 = 0;
        int i8 = 0;
        while (true) {
            i3 = i8;
            if (i7 >= this.f8825g) {
                break;
            }
            int[] iArr3 = this.f8822d;
            int i9 = iArr3[i7];
            int[] iArr4 = this.f8823e;
            int i10 = iArr4[i7];
            if (i > i10 || i10 >= i2) {
                i5 = i3;
                if (i3 > 0) {
                    int i11 = i7 - i3;
                    iArr3[i11] = i9;
                    iArr4[i11] = i10 - i3;
                    NativeAd[] nativeAdArr = this.f8824f;
                    nativeAdArr[i11] = nativeAdArr[i7];
                    i5 = i3;
                }
            } else {
                iArr[i3] = i9;
                iArr2[i3] = i10 - i3;
                this.f8824f[i7].destroy();
                this.f8824f[i7] = null;
                i5 = i3 + 1;
            }
            i7++;
            i8 = i5;
        }
        if (i3 == 0) {
            return 0;
        }
        int m25b = m25b(this.f8820b, this.f8821c, iArr2[0]);
        int i12 = this.f8821c - 1;
        while (true) {
            if (i12 >= m25b) {
                int[] iArr5 = this.f8819a;
                int i13 = i12 + i3;
                iArr5[i13] = iArr5[i12];
                int[] iArr6 = this.f8820b;
                iArr6[i13] = iArr6[i12] - i3;
                i12--;
            }
        }
        for (i4 = 0; i4 < i3; i4++) {
            int i14 = m25b + i4;
            this.f8819a[i14] = iArr[i4];
            this.f8820b[i14] = iArr2[i4];
        }
        this.f8821c += i3;
        this.f8825g -= i3;
        return i3;
    }

    /* renamed from: h */
    public int m19h(int i) {
        if (i == 0) {
            return 0;
        }
        return m18i(i - 1) + 1;
    }

    /* renamed from: i */
    public int m18i(int i) {
        return i + m24c(this.f8822d, this.f8825g, i);
    }

    /* renamed from: j */
    public int m17j(int i) {
        if (i == 0) {
            return 0;
        }
        int m16k = m16k(i - 1);
        int i2 = -1;
        if (m16k != -1) {
            i2 = m16k + 1;
        }
        return i2;
    }

    /* renamed from: k */
    public int m16k(int i) {
        int m26a = m26a(this.f8823e, 0, this.f8825g, i);
        if (m26a < 0) {
            return i - (m26a ^ (-1));
        }
        return -1;
    }

    /* renamed from: l */
    public NativeAd m15l(int i) {
        int m26a = m26a(this.f8823e, 0, this.f8825g, i);
        if (m26a < 0) {
            return null;
        }
        return this.f8824f[m26a];
    }

    /* renamed from: m */
    public int[] m14m() {
        int i = this.f8825g;
        int[] iArr = new int[i];
        System.arraycopy(this.f8823e, 0, iArr, 0, i);
        return iArr;
    }

    /* renamed from: n */
    public void m13n(int i) {
        for (int m25b = m25b(this.f8819a, this.f8821c, i); m25b < this.f8821c; m25b++) {
            int[] iArr = this.f8819a;
            iArr[m25b] = iArr[m25b] + 1;
            int[] iArr2 = this.f8820b;
            iArr2[m25b] = iArr2[m25b] + 1;
        }
        for (int m25b2 = m25b(this.f8822d, this.f8825g, i); m25b2 < this.f8825g; m25b2++) {
            int[] iArr3 = this.f8822d;
            iArr3[m25b2] = iArr3[m25b2] + 1;
            int[] iArr4 = this.f8823e;
            iArr4[m25b2] = iArr4[m25b2] + 1;
        }
    }

    /* renamed from: o */
    public boolean m12o(int i) {
        boolean z = false;
        if (m26a(this.f8823e, 0, this.f8825g, i) >= 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: p */
    public void m11p(int i, int i2) {
        m8s(i);
        m13n(i2);
    }

    /* renamed from: q */
    public int m10q(int i) {
        int m24c = m24c(this.f8820b, this.f8821c, i);
        if (m24c == this.f8821c) {
            return -1;
        }
        return this.f8820b[m24c];
    }

    /* renamed from: r */
    public void m9r(int i, NativeAd nativeAd) {
        int m25b = m25b(this.f8820b, this.f8821c, i);
        if (m25b == this.f8821c || this.f8820b[m25b] != i) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempted to insert an ad at an invalid position");
            return;
        }
        int i2 = this.f8819a[m25b];
        int m24c = m24c(this.f8822d, this.f8825g, i2);
        int i3 = this.f8825g;
        if (m24c < i3) {
            int i4 = i3 - m24c;
            int[] iArr = this.f8822d;
            int i5 = m24c + 1;
            System.arraycopy(iArr, m24c, iArr, i5, i4);
            int[] iArr2 = this.f8823e;
            System.arraycopy(iArr2, m24c, iArr2, i5, i4);
            NativeAd[] nativeAdArr = this.f8824f;
            System.arraycopy(nativeAdArr, m24c, nativeAdArr, i5, i4);
        }
        this.f8822d[m24c] = i2;
        this.f8823e[m24c] = i;
        this.f8824f[m24c] = nativeAd;
        this.f8825g++;
        int i6 = (this.f8821c - m25b) - 1;
        int[] iArr3 = this.f8820b;
        int i7 = m25b + 1;
        System.arraycopy(iArr3, i7, iArr3, m25b, i6);
        int[] iArr4 = this.f8819a;
        System.arraycopy(iArr4, i7, iArr4, m25b, i6);
        this.f8821c--;
        for (int i8 = m25b; i8 < this.f8821c; i8++) {
            int[] iArr5 = this.f8820b;
            iArr5[i8] = iArr5[i8] + 1;
        }
        for (int i9 = m24c + 1; i9 < this.f8825g; i9++) {
            int[] iArr6 = this.f8823e;
            iArr6[i9] = iArr6[i9] + 1;
        }
    }

    /* renamed from: s */
    public void m8s(int i) {
        for (int m24c = m24c(this.f8819a, this.f8821c, i); m24c < this.f8821c; m24c++) {
            int[] iArr = this.f8819a;
            iArr[m24c] = iArr[m24c] - 1;
            int[] iArr2 = this.f8820b;
            iArr2[m24c] = iArr2[m24c] - 1;
        }
        for (int m24c2 = m24c(this.f8822d, this.f8825g, i); m24c2 < this.f8825g; m24c2++) {
            int[] iArr3 = this.f8822d;
            iArr3[m24c2] = iArr3[m24c2] - 1;
            int[] iArr4 = this.f8823e;
            iArr4[m24c2] = iArr4[m24c2] - 1;
        }
    }

    /* renamed from: t */
    public boolean m7t(int i) {
        boolean z = false;
        if (m26a(this.f8820b, 0, this.f8821c, i) >= 0) {
            z = true;
        }
        return z;
    }
}
