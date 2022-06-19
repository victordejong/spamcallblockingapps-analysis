package com.google.android.exoplayer2.video.p261r;

import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
import com.google.android.exoplayer2.video.p261r.C5574d;
import java.util.ArrayList;
import java.util.zip.Inflater;
/* renamed from: com.google.android.exoplayer2.video.r.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/r/e.class */
public final class C5577e {
    /* renamed from: a */
    public static C5574d m18492a(byte[] bArr, int i) {
        ArrayList<C5574d.C5575a> arrayList;
        C5536v c5536v = new C5536v(bArr);
        try {
            arrayList = m18490c(c5536v) ? m18487f(c5536v) : m18488e(c5536v);
        } catch (ArrayIndexOutOfBoundsException e) {
            arrayList = null;
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        if (size == 1) {
            return new C5574d(arrayList.get(0), i);
        }
        if (size == 2) {
            return new C5574d(arrayList.get(0), arrayList.get(1), i);
        }
        return null;
    }

    /* renamed from: b */
    private static int m18491b(int i) {
        return (-(i & 1)) ^ (i >> 1);
    }

    /* renamed from: c */
    private static boolean m18490c(C5536v c5536v) {
        c5536v.m18679N(4);
        int m18668k = c5536v.m18668k();
        boolean z = false;
        c5536v.m18680M(0);
        if (m18668k == 1886547818) {
            z = true;
        }
        return z;
    }

    /* renamed from: d */
    private static C5574d.C5575a m18489d(C5536v c5536v) {
        int m18668k = c5536v.m18668k();
        if (m18668k > 10000) {
            return null;
        }
        float[] fArr = new float[m18668k];
        for (int i = 0; i < m18668k; i++) {
            fArr[i] = c5536v.m18669j();
        }
        int m18668k2 = c5536v.m18668k();
        if (m18668k2 > 32000) {
            return null;
        }
        double log = Math.log(2.0d);
        int ceil = (int) Math.ceil(Math.log(m18668k * 2.0d) / log);
        C5535u c5535u = new C5535u(c5536v.f17941a);
        c5535u.m18696o(c5536v.m18676c() * 8);
        float[] fArr2 = new float[m18668k2 * 5];
        int[] iArr = new int[5];
        int i2 = 0;
        for (int i3 = 0; i3 < m18668k2; i3++) {
            int i4 = 0;
            while (i4 < 5) {
                int m18491b = iArr[i4] + m18491b(c5535u.m18703h(ceil));
                if (m18491b >= m18668k || m18491b < 0) {
                    return null;
                }
                fArr2[i2] = fArr[m18491b];
                iArr[i4] = m18491b;
                i4++;
                i2++;
            }
        }
        c5535u.m18696o((c5535u.m18706e() + 7) & (-8));
        int m18703h = c5535u.m18703h(32);
        C5574d.C5576b[] c5576bArr = new C5574d.C5576b[m18703h];
        for (int i5 = 0; i5 < m18703h; i5++) {
            int m18703h2 = c5535u.m18703h(8);
            int m18703h3 = c5535u.m18703h(8);
            int m18703h4 = c5535u.m18703h(32);
            if (m18703h4 > 128000) {
                return null;
            }
            int ceil2 = (int) Math.ceil(Math.log(m18668k2 * 2.0d) / log);
            float[] fArr3 = new float[m18703h4 * 3];
            float[] fArr4 = new float[m18703h4 * 2];
            int i6 = 0;
            for (int i7 = 0; i7 < m18703h4; i7++) {
                i6 += m18491b(c5535u.m18703h(ceil2));
                if (i6 < 0 || i6 >= m18668k2) {
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
            c5576bArr[i5] = new C5574d.C5576b(m18703h2, fArr3, fArr4, m18703h3);
        }
        return new C5574d.C5575a(c5576bArr);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    private static ArrayList<C5574d.C5575a> m18488e(C5536v c5536v) {
        if (c5536v.m18653z() != 0) {
            return null;
        }
        c5536v.m18679N(7);
        int m18668k = c5536v.m18668k();
        if (m18668k == 1684433976) {
            C5536v c5536v2 = new C5536v();
            Inflater inflater = new Inflater(true);
            try {
                if (!C5515h0.m18853S(c5536v, c5536v2, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                c5536v = c5536v2;
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        } else if (m18668k != 1918990112) {
            return null;
        }
        return m18486g(c5536v);
    }

    /* renamed from: f */
    private static ArrayList<C5574d.C5575a> m18487f(C5536v c5536v) {
        int m18668k;
        c5536v.m18679N(8);
        int m18676c = c5536v.m18676c();
        int m18675d = c5536v.m18675d();
        while (m18676c < m18675d && (m18668k = c5536v.m18668k() + m18676c) > m18676c && m18668k <= m18675d) {
            int m18668k2 = c5536v.m18668k();
            if (m18668k2 == 2037673328 || m18668k2 == 1836279920) {
                c5536v.m18681L(m18668k);
                return m18488e(c5536v);
            }
            c5536v.m18680M(m18668k);
            m18676c = m18668k;
        }
        return null;
    }

    /* renamed from: g */
    private static ArrayList<C5574d.C5575a> m18486g(C5536v c5536v) {
        ArrayList<C5574d.C5575a> arrayList = new ArrayList<>();
        int m18676c = c5536v.m18676c();
        int m18675d = c5536v.m18675d();
        while (m18676c < m18675d) {
            int m18668k = c5536v.m18668k() + m18676c;
            if (m18668k <= m18676c || m18668k > m18675d) {
                return null;
            }
            if (c5536v.m18668k() == 1835365224) {
                C5574d.C5575a m18489d = m18489d(c5536v);
                if (m18489d == null) {
                    return null;
                }
                arrayList.add(m18489d);
            }
            c5536v.m18680M(m18668k);
            m18676c = m18668k;
        }
        return arrayList;
    }
}
