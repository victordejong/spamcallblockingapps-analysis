package com.google.android.exoplayer2.video.p347a;

import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import com.google.android.exoplayer2.video.p347a.C11644d;
import java.util.ArrayList;
import java.util.zip.Inflater;
/* renamed from: com.google.android.exoplayer2.video.a.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a/e.class */
public final class C11647e {
    private C11647e() {
    }

    /* renamed from: a */
    private static int m19744a(int i) {
        return (-(i & 1)) ^ (i >> 1);
    }

    /* renamed from: a */
    public static C11644d m19742a(byte[] bArr, int i) {
        ArrayList<C11644d.C11645a> arrayList;
        int m19792j;
        C11628u c11628u = new C11628u(bArr);
        try {
            c11628u.m19799e(4);
            m19792j = c11628u.m19792j();
            c11628u.m19801d(0);
        } catch (ArrayIndexOutOfBoundsException e) {
        }
        if (m19792j == 1886547818) {
            c11628u.m19799e(8);
            int i2 = c11628u.f38734b;
            int i3 = c11628u.f38735c;
            while (i2 < i3) {
                int m19792j2 = c11628u.m19792j() + i2;
                if (m19792j2 <= i2 || m19792j2 > i3) {
                    break;
                }
                int m19792j3 = c11628u.m19792j();
                if (m19792j3 == 2037673328 || m19792j3 == 1836279920) {
                    c11628u.m19803c(m19792j2);
                    arrayList = m19743a(c11628u);
                    break;
                }
                c11628u.m19801d(m19792j2);
                i2 = m19792j2;
            }
            arrayList = null;
        } else {
            arrayList = m19743a(c11628u);
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        if (size == 1) {
            return new C11644d(arrayList.get(0), i);
        }
        if (size == 2) {
            return new C11644d(arrayList.get(0), arrayList.get(1), i);
        }
        return null;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private static ArrayList<C11644d.C11645a> m19743a(C11628u c11628u) {
        if (c11628u.m19804c() != 0) {
            return null;
        }
        c11628u.m19799e(7);
        int m19792j = c11628u.m19792j();
        if (m19792j == 1684433976) {
            C11628u c11628u2 = new C11628u();
            Inflater inflater = new Inflater(true);
            try {
                if (!C11599af.m19978a(c11628u, c11628u2, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                c11628u = c11628u2;
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        } else if (m19792j != 1918990112) {
            return null;
        }
        return m19741b(c11628u);
    }

    /* renamed from: b */
    private static ArrayList<C11644d.C11645a> m19741b(C11628u c11628u) {
        ArrayList<C11644d.C11645a> arrayList = new ArrayList<>();
        int i = c11628u.f38734b;
        int i2 = c11628u.f38735c;
        while (i < i2) {
            int m19792j = c11628u.m19792j() + i;
            if (m19792j <= i || m19792j > i2) {
                return null;
            }
            if (c11628u.m19792j() == 1835365224) {
                C11644d.C11645a m19740c = m19740c(c11628u);
                if (m19740c == null) {
                    return null;
                }
                arrayList.add(m19740c);
            }
            c11628u.m19801d(m19792j);
            i = m19792j;
        }
        return arrayList;
    }

    /* renamed from: c */
    private static C11644d.C11645a m19740c(C11628u c11628u) {
        int m19792j = c11628u.m19792j();
        if (m19792j > 10000) {
            return null;
        }
        float[] fArr = new float[m19792j];
        for (int i = 0; i < m19792j; i++) {
            fArr[i] = Float.intBitsToFloat(c11628u.m19792j());
        }
        int m19792j2 = c11628u.m19792j();
        if (m19792j2 > 32000) {
            return null;
        }
        double log = Math.log(2.0d);
        int ceil = (int) Math.ceil(Math.log(m19792j * 2.0d) / log);
        C11627t c11627t = new C11627t(c11628u.f38733a);
        c11627t.m19826a(c11628u.f38734b * 8);
        float[] fArr2 = new float[m19792j2 * 5];
        int[] iArr = new int[5];
        int i2 = 0;
        for (int i3 = 0; i3 < m19792j2; i3++) {
            int i4 = 0;
            while (i4 < 5) {
                int m19744a = iArr[i4] + m19744a(c11627t.m19819c(ceil));
                if (m19744a >= m19792j || m19744a < 0) {
                    return null;
                }
                fArr2[i2] = fArr[m19744a];
                iArr[i4] = m19744a;
                i4++;
                i2++;
            }
        }
        c11627t.m19826a((c11627t.m19823b() + 7) & (-8));
        int m19819c = c11627t.m19819c(32);
        C11644d.C11646b[] c11646bArr = new C11644d.C11646b[m19819c];
        for (int i5 = 0; i5 < m19819c; i5++) {
            int m19819c2 = c11627t.m19819c(8);
            int m19819c3 = c11627t.m19819c(8);
            int m19819c4 = c11627t.m19819c(32);
            if (m19819c4 > 128000) {
                return null;
            }
            int ceil2 = (int) Math.ceil(Math.log(m19792j2 * 2.0d) / log);
            float[] fArr3 = new float[m19819c4 * 3];
            float[] fArr4 = new float[m19819c4 * 2];
            int i6 = 0;
            for (int i7 = 0; i7 < m19819c4; i7++) {
                i6 += m19744a(c11627t.m19819c(ceil2));
                if (i6 < 0 || i6 >= m19792j2) {
                    return null;
                }
                int i8 = i7 * 3;
                int i9 = i6 * 5;
                fArr3[i8] = fArr2[i9];
                fArr3[i8 + 1] = fArr2[i9 + 1];
                fArr3[i8 + 2] = fArr2[i9 + 2];
                int i10 = i7 * 2;
                fArr4[i10] = fArr2[i9 + 3];
                fArr4[i10 + 1] = fArr2[i9 + 4];
            }
            c11646bArr[i5] = new C11644d.C11646b(m19819c2, fArr3, fArr4, m19819c3);
        }
        return new C11644d.C11645a(c11646bArr);
    }
}
