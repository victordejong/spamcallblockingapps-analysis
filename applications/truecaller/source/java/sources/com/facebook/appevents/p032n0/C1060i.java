package com.facebook.appevents.p032n0;

import com.facebook.internal.p037u0.p040m.C1220a;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.l;
@Metadata(d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u000b\bÁ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u001b\u0010\b\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\nH\u0007¢\u0006\u0002\u0010\u000bJ\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0007J \u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J+\u0010\u000f\u001a\u00020\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0006H\u0007¢\u0006\u0002\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0013H\u0007J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0013H\u0007J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0007J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u001e"}, d2 = {"Lcom/facebook/appevents/ml/Operator;", "", "()V", "addmv", "", "x", "Lcom/facebook/appevents/ml/MTensor;", C22021b.f61237c, "concatenate", "tensors", "", "([Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;", "conv1D", "w", "dense", "embedding", "texts", "", "seqLength", "", "([Ljava/lang/String;ILcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;", "flatten", "startDim", "maxPool1D", "poolSize", "mul", "relu", "softmax", "transpose2D", "transpose3D", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.n0.i */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/n0/i.class */
public final class C1060i {
    /* renamed from: a */
    public static final void m41838a(C1053f c1053f, C1053f c1053f2) {
        if (C1220a.m41623b(C1060i.class)) {
            return;
        }
        try {
            l.e(c1053f, "x");
            l.e(c1053f2, C22021b.f61237c);
            int[] iArr = c1053f.f2897a;
            int i = iArr[0];
            int i2 = iArr[1];
            int i3 = iArr[2];
            float[] fArr = c1053f.f2899c;
            float[] fArr2 = c1053f2.f2899c;
            if (i <= 0) {
                return;
            }
            int i4 = 0;
            while (true) {
                int i5 = i4;
                int i6 = i5 + 1;
                if (i2 > 0) {
                    int i7 = 0;
                    while (true) {
                        int i8 = i7;
                        int i9 = i8 + 1;
                        if (i3 > 0) {
                            int i10 = 0;
                            while (true) {
                                int i11 = i10;
                                int i12 = i11 + 1;
                                int i13 = (i8 * i3) + (i5 * i2 * i3) + i11;
                                fArr[i13] = fArr[i13] + fArr2[i11];
                                if (i12 >= i3) {
                                    break;
                                }
                                i10 = i12;
                            }
                        }
                        if (i9 >= i2) {
                            break;
                        }
                        i7 = i9;
                    }
                }
                if (i6 >= i) {
                    return;
                }
                i4 = i6;
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1060i.class);
        }
    }

    /* renamed from: b */
    public static final C1053f m41837b(C1053f[] c1053fArr) {
        int i;
        if (C1220a.m41623b(C1060i.class)) {
            return null;
        }
        try {
            l.e(c1053fArr, "tensors");
            int i2 = c1053fArr[0].f2897a[0];
            int length = c1053fArr.length - 1;
            if (length >= 0) {
                int i3 = 0;
                i = 0;
                while (true) {
                    int i4 = i3 + 1;
                    i += c1053fArr[i3].f2897a[1];
                    if (i4 > length) {
                        break;
                    }
                    i3 = i4;
                }
            } else {
                i = 0;
            }
            C1053f c1053f = new C1053f(new int[]{i2, i});
            float[] fArr = c1053f.f2899c;
            if (i2 > 0) {
                int i5 = 0;
                while (true) {
                    int i6 = i5;
                    int i7 = i6 + 1;
                    int i8 = i6 * i;
                    int length2 = c1053fArr.length - 1;
                    if (length2 >= 0) {
                        int i9 = 0;
                        while (true) {
                            int i10 = i9;
                            int i11 = i10 + 1;
                            float[] fArr2 = c1053fArr[i10].f2899c;
                            int i12 = c1053fArr[i10].f2897a[1];
                            System.arraycopy(fArr2, i6 * i12, fArr, i8, i12);
                            i8 += i12;
                            if (i11 > length2) {
                                break;
                            }
                            i9 = i11;
                        }
                    }
                    if (i7 >= i2) {
                        break;
                    }
                    i5 = i7;
                }
            }
            return c1053f;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1060i.class);
            return null;
        }
    }

    /* renamed from: c */
    public static final C1053f m41836c(C1053f c1053f, C1053f c1053f2) {
        Throwable th;
        C1053f c1053f3;
        boolean z;
        if (C1220a.m41623b(C1060i.class)) {
            return null;
        }
        try {
            l.e(c1053f, "x");
            l.e(c1053f2, "w");
            try {
                int[] iArr = c1053f.f2897a;
                int i = iArr[0];
                int i2 = iArr[1];
                int i3 = iArr[2];
                int[] iArr2 = c1053f2.f2897a;
                int i4 = iArr2[0];
                int i5 = (i2 - i4) + 1;
                int i6 = iArr2[2];
                C1053f c1053f4 = new C1053f(new int[]{i, i5, i6});
                float[] fArr = c1053f.f2899c;
                float[] fArr2 = c1053f4.f2899c;
                float[] fArr3 = c1053f2.f2899c;
                if (i > 0) {
                    int i7 = 0;
                    C1053f c1053f5 = c1053f4;
                    boolean z2 = C1060i.class;
                    while (true) {
                        int i8 = i7 + 1;
                        if (i6 > 0) {
                            int i9 = 0;
                            while (true) {
                                int i10 = i9 + 1;
                                if (i5 > 0) {
                                    int i11 = 0;
                                    C1053f c1053f6 = c1053f5;
                                    z = z2;
                                    while (true) {
                                        int i12 = i11 + 1;
                                        float f = 0.0f;
                                        if (i4 > 0) {
                                            int i13 = 0;
                                            c1053f3 = c1053f6;
                                            while (true) {
                                                int i14 = i13 + 1;
                                                if (i3 > 0) {
                                                    int i15 = 0;
                                                    while (true) {
                                                        int i16 = i15;
                                                        int i17 = i16 + 1;
                                                        f = (fArr[((i13 + i11) * i3) + (i2 * i3 * i7) + i16] * fArr3[(((i13 * i3) + i16) * i6) + i9]) + f;
                                                        if (i17 >= i3) {
                                                            break;
                                                        }
                                                        i15 = i17;
                                                    }
                                                }
                                                if (i14 >= i4) {
                                                    break;
                                                }
                                                i13 = i14;
                                            }
                                        } else {
                                            c1053f3 = c1053f6;
                                            f = 0.0f;
                                        }
                                        fArr2[(i11 * i6) + (i5 * i6 * i7) + i9] = f;
                                        if (i12 >= i5) {
                                            break;
                                        }
                                        i11 = i12;
                                        c1053f6 = c1053f3;
                                    }
                                } else {
                                    boolean z3 = z2;
                                    c1053f3 = c1053f5;
                                    z = z3;
                                }
                                if (i10 >= i6) {
                                    break;
                                }
                                i9 = i10;
                                C1053f c1053f7 = c1053f3;
                                z2 = z;
                                c1053f5 = c1053f7;
                            }
                        } else {
                            boolean z4 = z2;
                            c1053f3 = c1053f5;
                            z = z4;
                        }
                        if (i8 >= i) {
                            break;
                        }
                        i7 = i8;
                        C1053f c1053f8 = c1053f3;
                        z2 = z;
                        c1053f5 = c1053f8;
                    }
                } else {
                    c1053f3 = c1053f4;
                }
                return c1053f3;
            } catch (Throwable th2) {
                th = th2;
                C1220a.m41624a(th, C1060i.class);
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: d */
    public static final C1053f m41835d(C1053f c1053f, C1053f c1053f2, C1053f c1053f3) {
        if (C1220a.m41623b(C1060i.class)) {
            return null;
        }
        try {
            l.e(c1053f, "x");
            l.e(c1053f2, "w");
            l.e(c1053f3, C22021b.f61237c);
            int i = c1053f.f2897a[0];
            int i2 = c1053f3.f2897a[0];
            C1053f m41831h = m41831h(c1053f, c1053f2);
            float[] fArr = c1053f3.f2899c;
            float[] fArr2 = m41831h.f2899c;
            if (i > 0) {
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    int i5 = i4 + 1;
                    if (i2 > 0) {
                        int i6 = 0;
                        while (true) {
                            int i7 = i6;
                            int i8 = i7 + 1;
                            int i9 = (i4 * i2) + i7;
                            fArr2[i9] = fArr2[i9] + fArr[i7];
                            if (i8 >= i2) {
                                break;
                            }
                            i6 = i8;
                        }
                    }
                    if (i5 >= i) {
                        break;
                    }
                    i3 = i5;
                }
            }
            return m41831h;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1060i.class);
            return null;
        }
    }

    /* renamed from: e */
    public static final C1053f m41834e(String[] strArr, int i, C1053f c1053f) {
        if (C1220a.m41623b(C1060i.class)) {
            return null;
        }
        try {
            l.e(strArr, "texts");
            l.e(c1053f, "w");
            int length = strArr.length;
            int i2 = c1053f.f2897a[1];
            C1053f c1053f2 = new C1053f(new int[]{length, i, i2});
            float[] fArr = c1053f2.f2899c;
            float[] fArr2 = c1053f.f2899c;
            if (length > 0) {
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    int i5 = i4 + 1;
                    int[] m41824c = C1061j.f2929a.m41824c(strArr[i4], i);
                    if (i > 0) {
                        int i6 = 0;
                        while (true) {
                            int i7 = i6;
                            int i8 = i7 + 1;
                            System.arraycopy(fArr2, m41824c[i7] * i2, fArr, (i7 * i2) + (i2 * i * i4), i2);
                            if (i8 >= i) {
                                break;
                            }
                            i6 = i8;
                        }
                    }
                    if (i5 >= length) {
                        break;
                    }
                    i3 = i5;
                }
            }
            return c1053f2;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1060i.class);
            return null;
        }
    }

    /* renamed from: f */
    public static final void m41833f(C1053f c1053f, int i) {
        if (C1220a.m41623b(C1060i.class)) {
            return;
        }
        try {
            l.e(c1053f, "x");
            int[] iArr = c1053f.f2897a;
            if (i >= iArr.length) {
                return;
            }
            int length = iArr.length;
            int i2 = 1;
            if (i < length) {
                int i3 = i;
                i2 = 1;
                while (true) {
                    int i4 = i3 + 1;
                    i2 *= c1053f.f2897a[i3];
                    if (i4 >= length) {
                        break;
                    }
                    i3 = i4;
                }
            }
            int[] iArr2 = new int[i + 1];
            int i5 = 0;
            if (i > 0) {
                while (true) {
                    int i6 = i5 + 1;
                    iArr2[i5] = c1053f.f2897a[i5];
                    if (i6 >= i) {
                        break;
                    }
                    i5 = i6;
                }
            }
            iArr2[i] = i2;
            c1053f.m41853a(iArr2);
        } catch (Throwable th) {
            C1220a.m41624a(th, C1060i.class);
        }
    }

    /* renamed from: g */
    public static final C1053f m41832g(C1053f c1053f, int i) {
        if (C1220a.m41623b(C1060i.class)) {
            return null;
        }
        try {
            l.e(c1053f, "x");
            int[] iArr = c1053f.f2897a;
            int i2 = iArr[0];
            int i3 = iArr[1];
            int i4 = iArr[2];
            int i5 = (i3 - i) + 1;
            C1053f c1053f2 = new C1053f(new int[]{i2, i5, i4});
            float[] fArr = c1053f.f2899c;
            float[] fArr2 = c1053f2.f2899c;
            if (i2 > 0) {
                int i6 = 0;
                while (true) {
                    int i7 = i6;
                    int i8 = i7 + 1;
                    if (i4 > 0) {
                        int i9 = 0;
                        while (true) {
                            int i10 = i9;
                            int i11 = i10 + 1;
                            if (i5 > 0) {
                                int i12 = 0;
                                while (true) {
                                    int i13 = i12;
                                    int i14 = i13 + 1;
                                    int i15 = i13 * i4;
                                    int i16 = (i7 * i5 * i4) + i15 + i10;
                                    fArr2[i16] = Float.MIN_VALUE;
                                    if (i > 0) {
                                        int i17 = 0;
                                        int i18 = i3;
                                        while (true) {
                                            int i19 = i17 + 1;
                                            fArr2[i16] = Math.max(fArr2[i16], fArr[(i17 * i4) + (i7 * i3 * i4) + i15 + i10]);
                                            if (i19 >= i) {
                                                break;
                                            }
                                            i17 = i19;
                                        }
                                        i3 = i18;
                                    }
                                    if (i14 >= i5) {
                                        break;
                                    }
                                    i12 = i14;
                                }
                            }
                            if (i11 >= i4) {
                                break;
                            }
                            i9 = i11;
                        }
                    }
                    if (i8 >= i2) {
                        break;
                    }
                    i6 = i8;
                }
            }
            return c1053f2;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1060i.class);
            return null;
        }
    }

    /* renamed from: h */
    public static final C1053f m41831h(C1053f c1053f, C1053f c1053f2) {
        if (C1220a.m41623b(C1060i.class)) {
            return null;
        }
        try {
            l.e(c1053f, "x");
            l.e(c1053f2, "w");
            int i = c1053f.f2897a[0];
            int[] iArr = c1053f2.f2897a;
            int i2 = iArr[0];
            int i3 = iArr[1];
            C1053f c1053f3 = new C1053f(new int[]{i, i3});
            float[] fArr = c1053f.f2899c;
            float[] fArr2 = c1053f2.f2899c;
            float[] fArr3 = c1053f3.f2899c;
            if (i > 0) {
                int i4 = 0;
                while (true) {
                    int i5 = i4;
                    int i6 = i5 + 1;
                    if (i3 > 0) {
                        int i7 = 0;
                        while (true) {
                            int i8 = i7;
                            int i9 = i8 + 1;
                            int i10 = (i5 * i3) + i8;
                            fArr3[i10] = 0.0f;
                            if (i2 > 0) {
                                int i11 = 0;
                                while (true) {
                                    int i12 = i11;
                                    int i13 = i12 + 1;
                                    fArr3[i10] = (fArr[(i5 * i2) + i12] * fArr2[(i12 * i3) + i8]) + fArr3[i10];
                                    if (i13 >= i2) {
                                        break;
                                    }
                                    i11 = i13;
                                }
                            }
                            if (i9 >= i3) {
                                break;
                            }
                            i7 = i9;
                        }
                    }
                    if (i6 >= i) {
                        break;
                    }
                    i4 = i6;
                }
            }
            return c1053f3;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1060i.class);
            return null;
        }
    }

    /* renamed from: i */
    public static final void m41830i(C1053f c1053f) {
        if (C1220a.m41623b(C1060i.class)) {
            return;
        }
        try {
            l.e(c1053f, "x");
            float[] fArr = c1053f.f2899c;
            int i = 0;
            int length = fArr.length - 1;
            if (length < 0) {
                return;
            }
            while (true) {
                int i2 = i + 1;
                if (fArr[i] < 0.0f) {
                    fArr[i] = 0.0f;
                }
                if (i2 > length) {
                    return;
                }
                i = i2;
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1060i.class);
        }
    }

    /* renamed from: j */
    public static final void m41829j(C1053f c1053f) {
        if (C1220a.m41623b(C1060i.class)) {
            return;
        }
        try {
            l.e(c1053f, "x");
            int[] iArr = c1053f.f2897a;
            int i = 0;
            int i2 = iArr[0];
            int i3 = iArr[1];
            float[] fArr = c1053f.f2899c;
            if (i2 <= 0) {
                return;
            }
            while (true) {
                int i4 = i + 1;
                int i5 = i * i3;
                int i6 = i5 + i3;
                float f = Float.MIN_VALUE;
                float f2 = Float.MIN_VALUE;
                if (i5 < i6) {
                    int i7 = i5;
                    while (true) {
                        int i8 = i7 + 1;
                        f = f2;
                        if (fArr[i7] > f2) {
                            f = fArr[i7];
                        }
                        if (i8 >= i6) {
                            break;
                        }
                        i7 = i8;
                        f2 = f;
                    }
                }
                float f3 = 0.0f;
                if (i5 < i6) {
                    int i9 = i5;
                    f3 = 0.0f;
                    while (true) {
                        int i10 = i9 + 1;
                        fArr[i9] = (float) Math.exp(fArr[i9] - f);
                        f3 += fArr[i9];
                        if (i10 >= i6) {
                            break;
                        }
                        i9 = i10;
                    }
                }
                if (i5 < i6) {
                    while (true) {
                        int i11 = i5 + 1;
                        fArr[i5] = fArr[i5] / f3;
                        if (i11 >= i6) {
                            break;
                        }
                        i5 = i11;
                    }
                }
                if (i4 >= i2) {
                    return;
                }
                i = i4;
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1060i.class);
        }
    }

    /* renamed from: k */
    public static final C1053f m41828k(C1053f c1053f) {
        if (C1220a.m41623b(C1060i.class)) {
            return null;
        }
        try {
            l.e(c1053f, "x");
            int[] iArr = c1053f.f2897a;
            int i = iArr[0];
            int i2 = iArr[1];
            C1053f c1053f2 = new C1053f(new int[]{i2, i});
            float[] fArr = c1053f.f2899c;
            float[] fArr2 = c1053f2.f2899c;
            if (i > 0) {
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    int i5 = i4 + 1;
                    if (i2 > 0) {
                        int i6 = 0;
                        while (true) {
                            int i7 = i6;
                            int i8 = i7 + 1;
                            fArr2[(i7 * i) + i4] = fArr[(i4 * i2) + i7];
                            if (i8 >= i2) {
                                break;
                            }
                            i6 = i8;
                        }
                    }
                    if (i5 >= i) {
                        break;
                    }
                    i3 = i5;
                }
            }
            return c1053f2;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1060i.class);
            return null;
        }
    }

    /* renamed from: l */
    public static final C1053f m41827l(C1053f c1053f) {
        if (C1220a.m41623b(C1060i.class)) {
            return null;
        }
        try {
            l.e(c1053f, "x");
            int[] iArr = c1053f.f2897a;
            int i = iArr[0];
            int i2 = iArr[1];
            int i3 = iArr[2];
            C1053f c1053f2 = new C1053f(new int[]{i3, i2, i});
            float[] fArr = c1053f.f2899c;
            float[] fArr2 = c1053f2.f2899c;
            if (i > 0) {
                int i4 = 0;
                while (true) {
                    int i5 = i4;
                    int i6 = i5 + 1;
                    if (i2 > 0) {
                        int i7 = 0;
                        while (true) {
                            int i8 = i7;
                            int i9 = i8 + 1;
                            if (i3 > 0) {
                                int i10 = 0;
                                while (true) {
                                    int i11 = i10;
                                    int i12 = i11 + 1;
                                    fArr2[(i8 * i) + (i11 * i * i2) + i5] = fArr[(i8 * i3) + (i5 * i2 * i3) + i11];
                                    if (i12 >= i3) {
                                        break;
                                    }
                                    i10 = i12;
                                }
                            }
                            if (i9 >= i2) {
                                break;
                            }
                            i7 = i9;
                        }
                    }
                    if (i6 >= i) {
                        break;
                    }
                    i4 = i6;
                }
            }
            return c1053f2;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1060i.class);
            return null;
        }
    }
}
