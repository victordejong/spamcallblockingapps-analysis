package com.facebook.appevents.g;

import com.facebook.internal.b.b.a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/d.class */
final class d {
    d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(a aVar, int i) {
        if (a.a(d.class)) {
            return null;
        }
        try {
            int i2 = aVar.f19577b[0];
            int i3 = aVar.f19577b[1];
            int i4 = aVar.f19577b[2];
            int i5 = (i3 - i) + 1;
            a aVar2 = new a(new int[]{i2, i5, i4});
            float[] fArr = aVar.f19576a;
            float[] fArr2 = aVar2.f19576a;
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
            return aVar2;
        } catch (Throwable th) {
            a.a(th, d.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(a aVar, a aVar2, a aVar3) {
        if (a.a(d.class)) {
            return null;
        }
        try {
            int i = aVar.f19577b[0];
            int i2 = aVar3.f19577b[0];
            a c2 = c(aVar, aVar2);
            float[] fArr = aVar3.f19576a;
            float[] fArr2 = c2.f19576a;
            for (int i3 = 0; i3 < i; i3++) {
                for (int i4 = 0; i4 < i2; i4++) {
                    int i5 = (i3 * i2) + i4;
                    fArr2[i5] = fArr2[i5] + fArr[i4];
                }
            }
            return c2;
        } catch (Throwable th) {
            a.a(th, d.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(a[] aVarArr) {
        if (a.a(d.class)) {
            return null;
        }
        try {
            int i = aVarArr[0].f19577b[0];
            int i2 = 0;
            for (int i3 = 0; i3 < 4; i3++) {
                i2 += aVarArr[i3].f19577b[1];
            }
            a aVar = new a(new int[]{i, i2});
            float[] fArr = aVar.f19576a;
            for (int i4 = 0; i4 < i; i4++) {
                int i5 = i4 * i2;
                for (int i6 = 0; i6 < 4; i6++) {
                    float[] fArr2 = aVarArr[i6].f19576a;
                    int i7 = aVarArr[i6].f19577b[1];
                    System.arraycopy(fArr2, i4 * i7, fArr, i5, i7);
                    i5 += i7;
                }
            }
            return aVar;
        } catch (Throwable th) {
            a.a(th, d.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(String[] strArr, a aVar) {
        if (a.a(d.class)) {
            return null;
        }
        try {
            int length = strArr.length;
            int i = aVar.f19577b[1];
            a aVar2 = new a(new int[]{length, 128, i});
            float[] fArr = aVar2.f19576a;
            float[] fArr2 = aVar.f19576a;
            for (int i2 = 0; i2 < length; i2++) {
                int[] a2 = e.a(strArr[i2], 128);
                for (int i3 = 0; i3 < 128; i3++) {
                    System.arraycopy(fArr2, a2[i3] * i, fArr, (i * 128 * i2) + (i * i3), i);
                }
            }
            return aVar2;
        } catch (Throwable th) {
            a.a(th, d.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(a aVar) {
        if (!a.a(d.class)) {
            try {
                float[] fArr = aVar.f19576a;
                for (int i = 0; i < fArr.length; i++) {
                    if (fArr[i] < BitmapDescriptorFactory.HUE_RED) {
                        fArr[i] = 0.0f;
                    }
                }
            } catch (Throwable th) {
                a.a(th, d.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(a aVar, a aVar2) {
        if (!a.a(d.class)) {
            try {
                int i = aVar.f19577b[0];
                int i2 = aVar.f19577b[1];
                int i3 = aVar.f19577b[2];
                float[] fArr = aVar.f19576a;
                float[] fArr2 = aVar2.f19576a;
                for (int i4 = 0; i4 < i; i4++) {
                    for (int i5 = 0; i5 < i2; i5++) {
                        for (int i6 = 0; i6 < i3; i6++) {
                            int i7 = (i4 * i2 * i3) + (i5 * i3) + i6;
                            fArr[i7] = fArr[i7] + fArr2[i6];
                        }
                    }
                }
            } catch (Throwable th) {
                a.a(th, d.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a b(a aVar, a aVar2) {
        if (a.a(d.class)) {
            return null;
        }
        try {
            int i = aVar.f19577b[0];
            int i2 = aVar.f19577b[1];
            int i3 = aVar.f19577b[2];
            int i4 = aVar2.f19577b[0];
            int i5 = (i2 - i4) + 1;
            int i6 = aVar2.f19577b[2];
            a aVar3 = new a(new int[]{i, i5, i6});
            float[] fArr = aVar.f19576a;
            float[] fArr2 = aVar3.f19576a;
            float[] fArr3 = aVar2.f19576a;
            for (int i7 = 0; i7 < i; i7++) {
                for (int i8 = 0; i8 < i6; i8++) {
                    int i9 = 0;
                    while (true) {
                        if (i9 < i5) {
                            float f = BitmapDescriptorFactory.HUE_RED;
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
            return aVar3;
        } catch (Throwable th) {
            a.a(th, d.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(a aVar) {
        if (!a.a(d.class)) {
            try {
                if (1 < aVar.f19577b.length) {
                    int i = 1;
                    for (int i2 = 1; i2 < aVar.f19577b.length; i2++) {
                        i *= aVar.f19577b[i2];
                    }
                    int[] iArr = new int[2];
                    for (int i3 = 0; i3 <= 0; i3++) {
                        iArr[i3] = aVar.f19577b[i3];
                    }
                    iArr[1] = i;
                    aVar.f19577b = iArr;
                    int a2 = a.a(iArr);
                    float[] fArr = new float[a2];
                    System.arraycopy(aVar.f19576a, 0, fArr, 0, Math.min(aVar.f19578c, a2));
                    aVar.f19576a = fArr;
                    aVar.f19578c = a2;
                }
            } catch (Throwable th) {
                a.a(th, d.class);
            }
        }
    }

    private static a c(a aVar, a aVar2) {
        if (a.a(d.class)) {
            return null;
        }
        try {
            int i = aVar.f19577b[0];
            int i2 = aVar2.f19577b[0];
            int i3 = aVar2.f19577b[1];
            a aVar3 = new a(new int[]{i, i3});
            float[] fArr = aVar.f19576a;
            float[] fArr2 = aVar2.f19576a;
            float[] fArr3 = aVar3.f19576a;
            for (int i4 = 0; i4 < i; i4++) {
                for (int i5 = 0; i5 < i3; i5++) {
                    int i6 = (i4 * i3) + i5;
                    fArr3[i6] = 0.0f;
                    for (int i7 = 0; i7 < i2; i7++) {
                        fArr3[i6] = fArr3[i6] + (fArr[(i4 * i2) + i7] * fArr2[(i7 * i3) + i5]);
                    }
                }
            }
            return aVar3;
        } catch (Throwable th) {
            a.a(th, d.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(a aVar) {
        int i;
        if (!a.a(d.class)) {
            try {
                int i2 = aVar.f19577b[0];
                int i3 = aVar.f19577b[1];
                float[] fArr = aVar.f19576a;
                for (int i4 = 0; i4 < i2; i4++) {
                    int i5 = i4 * i3;
                    int i6 = i5 + i3;
                    float f = Float.MIN_VALUE;
                    float f2 = BitmapDescriptorFactory.HUE_RED;
                    for (int i7 = i5; i7 < i6; i7++) {
                        f = f;
                        if (fArr[i7] > f) {
                            f = fArr[i7];
                        }
                    }
                    for (int i8 = i5; i8 < i6; i8++) {
                        fArr[i8] = (float) Math.exp(fArr[i8] - f);
                    }
                    int i9 = i5;
                    while (true) {
                        if (i9 < i6) {
                            f2 += fArr[i9];
                            i9++;
                        }
                    }
                    for (i = i5; i < i6; i++) {
                        fArr[i] = fArr[i] / f2;
                    }
                }
            } catch (Throwable th) {
                a.a(th, d.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a d(a aVar) {
        if (a.a(d.class)) {
            return null;
        }
        try {
            int i = aVar.f19577b[0];
            int i2 = aVar.f19577b[1];
            a aVar2 = new a(new int[]{i2, i});
            float[] fArr = aVar.f19576a;
            float[] fArr2 = aVar2.f19576a;
            for (int i3 = 0; i3 < i; i3++) {
                for (int i4 = 0; i4 < i2; i4++) {
                    fArr2[(i4 * i) + i3] = fArr[(i3 * i2) + i4];
                }
            }
            return aVar2;
        } catch (Throwable th) {
            a.a(th, d.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a e(a aVar) {
        if (a.a(d.class)) {
            return null;
        }
        try {
            int i = aVar.f19577b[0];
            int i2 = aVar.f19577b[1];
            int i3 = aVar.f19577b[2];
            a aVar2 = new a(new int[]{i3, i2, i});
            float[] fArr = aVar.f19576a;
            float[] fArr2 = aVar2.f19576a;
            for (int i4 = 0; i4 < i; i4++) {
                for (int i5 = 0; i5 < i2; i5++) {
                    for (int i6 = 0; i6 < i3; i6++) {
                        fArr2[(i6 * i * i2) + (i5 * i) + i4] = fArr[(i4 * i2 * i3) + (i5 * i3) + i6];
                    }
                }
            }
            return aVar2;
        } catch (Throwable th) {
            a.a(th, d.class);
            return null;
        }
    }
}
