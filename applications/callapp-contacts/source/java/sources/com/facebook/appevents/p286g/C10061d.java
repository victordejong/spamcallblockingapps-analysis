package com.facebook.appevents.p286g;

import com.facebook.internal.p299b.p301b.C10249a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.facebook.appevents.g.d */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/d.class */
final class C10061d {
    C10061d() {
    }

    /* renamed from: a */
    public static C10048a m23504a(C10048a c10048a, int i) {
        if (C10249a.m23108a(C10061d.class)) {
            return null;
        }
        try {
            int i2 = c10048a.f33343b[0];
            int i3 = c10048a.f33343b[1];
            int i4 = c10048a.f33343b[2];
            int i5 = (i3 - i) + 1;
            C10048a c10048a2 = new C10048a(new int[]{i2, i5, i4});
            float[] fArr = c10048a.f33342a;
            float[] fArr2 = c10048a2.f33342a;
            for (int i6 = 0; i6 < i2; i6++) {
                for (int i7 = 0; i7 < i4; i7++) {
                    for (int i8 = 0; i8 < i5; i8++) {
                        int i9 = i8 * i4;
                        int i10 = (i6 * i5 * i4) + i9 + i7;
                        fArr2[i10] = Float.MIN_VALUE;
                        for (int i11 = 0; i11 < i; i11++) {
                            fArr2[i10] = Math.max(fArr2[i10], fArr[(i6 * i3 * i4) + i9 + i7 + (i11 * i4)]);
                        }
                    }
                }
            }
            return c10048a2;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10061d.class);
            return null;
        }
    }

    /* renamed from: a */
    public static C10048a m23502a(C10048a c10048a, C10048a c10048a2, C10048a c10048a3) {
        if (C10249a.m23108a(C10061d.class)) {
            return null;
        }
        try {
            int i = c10048a.f33343b[0];
            int i2 = c10048a3.f33343b[0];
            C10048a m23496c = m23496c(c10048a, c10048a2);
            float[] fArr = c10048a3.f33342a;
            float[] fArr2 = m23496c.f33342a;
            for (int i3 = 0; i3 < i; i3++) {
                for (int i4 = 0; i4 < i2; i4++) {
                    int i5 = (i3 * i2) + i4;
                    fArr2[i5] = fArr2[i5] + fArr[i4];
                }
            }
            return m23496c;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10061d.class);
            return null;
        }
    }

    /* renamed from: a */
    public static C10048a m23501a(C10048a[] c10048aArr) {
        if (C10249a.m23108a(C10061d.class)) {
            return null;
        }
        try {
            int i = c10048aArr[0].f33343b[0];
            int i2 = 0;
            for (int i3 = 0; i3 < 4; i3++) {
                i2 += c10048aArr[i3].f33343b[1];
            }
            C10048a c10048a = new C10048a(new int[]{i, i2});
            float[] fArr = c10048a.f33342a;
            for (int i4 = 0; i4 < i; i4++) {
                int i5 = i4 * i2;
                for (int i6 = 0; i6 < 4; i6++) {
                    float[] fArr2 = c10048aArr[i6].f33342a;
                    int i7 = c10048aArr[i6].f33343b[1];
                    System.arraycopy(fArr2, i4 * i7, fArr, i5, i7);
                    i5 += i7;
                }
            }
            return c10048a;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10061d.class);
            return null;
        }
    }

    /* renamed from: a */
    public static C10048a m23500a(String[] strArr, C10048a c10048a) {
        if (C10249a.m23108a(C10061d.class)) {
            return null;
        }
        try {
            int length = strArr.length;
            int i = c10048a.f33343b[1];
            C10048a c10048a2 = new C10048a(new int[]{length, 128, i});
            float[] fArr = c10048a2.f33342a;
            float[] fArr2 = c10048a.f33342a;
            for (int i2 = 0; i2 < length; i2++) {
                int[] m23491a = C10062e.m23491a(strArr[i2], 128);
                for (int i3 = 0; i3 < 128; i3++) {
                    System.arraycopy(fArr2, m23491a[i3] * i, fArr, (i * 128 * i2) + (i * i3), i);
                }
            }
            return c10048a2;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10061d.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23505a(C10048a c10048a) {
        if (C10249a.m23108a(C10061d.class)) {
            return;
        }
        try {
            float[] fArr = c10048a.f33342a;
            for (int i = 0; i < fArr.length; i++) {
                if (fArr[i] < BitmapDescriptorFactory.HUE_RED) {
                    fArr[i] = 0.0f;
                }
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10061d.class);
        }
    }

    /* renamed from: a */
    public static void m23503a(C10048a c10048a, C10048a c10048a2) {
        if (C10249a.m23108a(C10061d.class)) {
            return;
        }
        try {
            int i = c10048a.f33343b[0];
            int i2 = c10048a.f33343b[1];
            int i3 = c10048a.f33343b[2];
            float[] fArr = c10048a.f33342a;
            float[] fArr2 = c10048a2.f33342a;
            for (int i4 = 0; i4 < i; i4++) {
                for (int i5 = 0; i5 < i2; i5++) {
                    for (int i6 = 0; i6 < i3; i6++) {
                        int i7 = (i4 * i2 * i3) + (i5 * i3) + i6;
                        fArr[i7] = fArr[i7] + fArr2[i6];
                    }
                }
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10061d.class);
        }
    }

    /* renamed from: b */
    public static C10048a m23498b(C10048a c10048a, C10048a c10048a2) {
        if (C10249a.m23108a(C10061d.class)) {
            return null;
        }
        try {
            int i = c10048a.f33343b[0];
            int i2 = c10048a.f33343b[1];
            int i3 = c10048a.f33343b[2];
            int i4 = c10048a2.f33343b[0];
            int i5 = (i2 - i4) + 1;
            int i6 = c10048a2.f33343b[2];
            C10048a c10048a3 = new C10048a(new int[]{i, i5, i6});
            float[] fArr = c10048a.f33342a;
            float[] fArr2 = c10048a3.f33342a;
            float[] fArr3 = c10048a2.f33342a;
            for (int i7 = 0; i7 < i; i7++) {
                for (int i8 = 0; i8 < i6; i8++) {
                    int i9 = 0;
                    while (true) {
                        if (i9 < i5) {
                            float f = 0.0f;
                            for (int i10 = 0; i10 < i4; i10++) {
                                for (int i11 = 0; i11 < i3; i11++) {
                                    f += fArr[(i2 * i3 * i7) + ((i10 + i9) * i3) + i11] * fArr3[(((i10 * i3) + i11) * i6) + i8];
                                }
                            }
                            fArr2[(i5 * i6 * i7) + (i9 * i6) + i8] = f;
                            i9++;
                        }
                    }
                }
            }
            return c10048a3;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10061d.class);
            return null;
        }
    }

    /* renamed from: b */
    public static void m23499b(C10048a c10048a) {
        if (C10249a.m23108a(C10061d.class)) {
            return;
        }
        try {
            if (1 >= c10048a.f33343b.length) {
                return;
            }
            int i = 1;
            for (int i2 = 1; i2 < c10048a.f33343b.length; i2++) {
                i *= c10048a.f33343b[i2];
            }
            int[] iArr = new int[2];
            for (int i3 = 0; i3 <= 0; i3++) {
                iArr[i3] = c10048a.f33343b[i3];
            }
            iArr[1] = i;
            c10048a.f33343b = iArr;
            int m23529a = C10048a.m23529a(iArr);
            float[] fArr = new float[m23529a];
            System.arraycopy(c10048a.f33342a, 0, fArr, 0, Math.min(c10048a.f33344c, m23529a));
            c10048a.f33342a = fArr;
            c10048a.f33344c = m23529a;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10061d.class);
        }
    }

    /* renamed from: c */
    private static C10048a m23496c(C10048a c10048a, C10048a c10048a2) {
        if (C10249a.m23108a(C10061d.class)) {
            return null;
        }
        try {
            int i = c10048a.f33343b[0];
            int i2 = c10048a2.f33343b[0];
            int i3 = c10048a2.f33343b[1];
            C10048a c10048a3 = new C10048a(new int[]{i, i3});
            float[] fArr = c10048a.f33342a;
            float[] fArr2 = c10048a2.f33342a;
            float[] fArr3 = c10048a3.f33342a;
            for (int i4 = 0; i4 < i; i4++) {
                for (int i5 = 0; i5 < i3; i5++) {
                    int i6 = (i4 * i3) + i5;
                    fArr3[i6] = 0.0f;
                    for (int i7 = 0; i7 < i2; i7++) {
                        fArr3[i6] = fArr3[i6] + (fArr[(i4 * i2) + i7] * fArr2[(i7 * i3) + i5]);
                    }
                }
            }
            return c10048a3;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10061d.class);
            return null;
        }
    }

    /* renamed from: c */
    public static void m23497c(C10048a c10048a) {
        int i;
        if (C10249a.m23108a(C10061d.class)) {
            return;
        }
        try {
            int i2 = c10048a.f33343b[0];
            int i3 = c10048a.f33343b[1];
            float[] fArr = c10048a.f33342a;
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = i4 * i3;
                int i6 = i5 + i3;
                float f = Float.MIN_VALUE;
                int i7 = i5;
                while (i7 < i6) {
                    float f2 = f;
                    if (fArr[i7] > f) {
                        f2 = fArr[i7];
                    }
                    i7++;
                    f = f2;
                }
                for (int i8 = i5; i8 < i6; i8++) {
                    fArr[i8] = (float) Math.exp(fArr[i8] - f);
                }
                int i9 = i5;
                float f3 = 0.0f;
                while (true) {
                    if (i9 < i6) {
                        f3 += fArr[i9];
                        i9++;
                    }
                }
                for (i = i5; i < i6; i++) {
                    fArr[i] = fArr[i] / f3;
                }
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10061d.class);
        }
    }

    /* renamed from: d */
    public static C10048a m23495d(C10048a c10048a) {
        if (C10249a.m23108a(C10061d.class)) {
            return null;
        }
        try {
            int i = c10048a.f33343b[0];
            int i2 = c10048a.f33343b[1];
            C10048a c10048a2 = new C10048a(new int[]{i2, i});
            float[] fArr = c10048a.f33342a;
            float[] fArr2 = c10048a2.f33342a;
            for (int i3 = 0; i3 < i; i3++) {
                for (int i4 = 0; i4 < i2; i4++) {
                    fArr2[(i4 * i) + i3] = fArr[(i3 * i2) + i4];
                }
            }
            return c10048a2;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10061d.class);
            return null;
        }
    }

    /* renamed from: e */
    public static C10048a m23494e(C10048a c10048a) {
        if (C10249a.m23108a(C10061d.class)) {
            return null;
        }
        try {
            int i = c10048a.f33343b[0];
            int i2 = c10048a.f33343b[1];
            int i3 = c10048a.f33343b[2];
            C10048a c10048a2 = new C10048a(new int[]{i3, i2, i});
            float[] fArr = c10048a.f33342a;
            float[] fArr2 = c10048a2.f33342a;
            for (int i4 = 0; i4 < i; i4++) {
                for (int i5 = 0; i5 < i2; i5++) {
                    for (int i6 = 0; i6 < i3; i6++) {
                        fArr2[(i6 * i * i2) + (i5 * i) + i4] = fArr[(i4 * i2 * i3) + (i5 * i3) + i6];
                    }
                }
            }
            return c10048a2;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10061d.class);
            return null;
        }
    }
}
