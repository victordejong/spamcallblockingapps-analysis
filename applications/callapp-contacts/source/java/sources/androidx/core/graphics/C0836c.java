package androidx.core.graphics;

import android.graphics.Path;
import android.util.Log;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* renamed from: androidx.core.graphics.c */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/c.class */
public final class C0836c {

    /* renamed from: androidx.core.graphics.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/c$a.class */
    public static final class C0837a {

        /* renamed from: a */
        int f3567a;

        /* renamed from: b */
        boolean f3568b;

        C0837a() {
        }
    }

    /* renamed from: androidx.core.graphics.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/c$b.class */
    public static final class C0838b {

        /* renamed from: a */
        public char f3569a;

        /* renamed from: b */
        public float[] f3570b;

        C0838b(char c, float[] fArr) {
            this.f3569a = c;
            this.f3570b = fArr;
        }

        C0838b(C0838b c0838b) {
            this.f3569a = c0838b.f3569a;
            float[] fArr = c0838b.f3570b;
            this.f3570b = C0836c.m44388a(fArr, fArr.length);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v28, types: [double] */
        /* JADX WARN: Type inference failed for: r0v31, types: [double] */
        /* JADX WARN: Type inference failed for: r0v43, types: [double] */
        /* JADX WARN: Type inference failed for: r0v50, types: [double] */
        /* JADX WARN: Type inference failed for: r0v53, types: [double] */
        /* JADX WARN: Type inference failed for: r0v56, types: [double] */
        /* JADX WARN: Type inference failed for: r0v59, types: [double] */
        /* renamed from: a */
        private static void m44383a(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
            int ceil = (int) Math.ceil(Math.abs((d9 * 4.0d) / 3.141592653589793d));
            double cos = Math.cos(d7);
            double sin = Math.sin(d7);
            double cos2 = Math.cos(d8);
            double sin2 = Math.sin(d8);
            double d10 = -d3;
            double d11 = d10 * cos;
            double d12 = d4 * sin;
            double d13 = d10 * sin;
            double d14 = d4 * cos;
            double d15 = d9 / ceil;
            char c = (sin2 * d13) + (cos2 * d14);
            int i = 0;
            char c2 = d6;
            char c3 = (d11 * sin2) - (d12 * cos2);
            char c4 = d8;
            char c5 = d5;
            while (i < ceil) {
                ?? r0 = c4 + d15;
                double sin3 = Math.sin(r0);
                double cos3 = Math.cos(r0);
                ?? r02 = (d + ((d3 * cos) * cos3)) - (d12 * sin3);
                ?? r03 = d2 + (d3 * sin * cos3) + (d14 * sin3);
                ?? r04 = (d11 * sin3) - (d12 * cos3);
                ?? r05 = (sin3 * d13) + (cos3 * d14);
                double d16 = r0 - c4;
                double tan = Math.tan(d16 / 2.0d);
                double sin4 = (Math.sin(d16) * (Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d)) / 3.0d;
                path.rLineTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                path.cubicTo((float) (c5 + (c3 * sin4)), (float) (c2 + (c * sin4)), (float) (r02 - (sin4 * r04)), (float) (r03 - (sin4 * r05)), (float) r02, (float) r03);
                i++;
                c5 = r02;
                c4 = r0;
                c = r05;
                c3 = r04;
                c2 = r03;
            }
        }

        /* JADX WARN: Type inference failed for: r0v100, types: [double] */
        /* JADX WARN: Type inference failed for: r0v102, types: [double] */
        /* JADX WARN: Type inference failed for: r0v104, types: [double] */
        /* JADX WARN: Type inference failed for: r0v79, types: [double] */
        /* JADX WARN: Type inference failed for: r0v92, types: [double] */
        /* JADX WARN: Type inference failed for: r0v94, types: [double] */
        /* JADX WARN: Type inference failed for: r0v98, types: [double] */
        /* renamed from: a */
        private static void m44382a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            char c;
            char c2;
            float f8 = f6;
            float f9 = f5;
            while (true) {
                double radians = Math.toRadians(f7);
                double cos = Math.cos(radians);
                double sin = Math.sin(radians);
                double d = f;
                double d2 = f2;
                double d3 = f9;
                double d4 = ((d * cos) + (d2 * sin)) / d3;
                double d5 = f8;
                double d6 = (((-f) * sin) + (d2 * cos)) / d5;
                double d7 = f4;
                double d8 = ((f3 * cos) + (d7 * sin)) / d3;
                double d9 = (((-f3) * sin) + (d7 * cos)) / d5;
                double d10 = d4 - d8;
                double d11 = d6 - d9;
                double d12 = (d4 + d8) / 2.0d;
                double d13 = (d6 + d9) / 2.0d;
                double d14 = (d10 * d10) + (d11 * d11);
                if (d14 == 0.0d) {
                    Log.w("PathParser", " Points are coincident");
                    return;
                }
                double d15 = (1.0d / d14) - 0.25d;
                if (d15 >= 0.0d) {
                    double sqrt = Math.sqrt(d15);
                    double d16 = d10 * sqrt;
                    double d17 = sqrt * d11;
                    if (z == z2) {
                        c = d12 - d17;
                        c2 = d13 + d16;
                    } else {
                        c = d12 + d17;
                        c2 = d13 - d16;
                    }
                    double atan2 = Math.atan2(d6 - c2, d4 - c);
                    ?? atan22 = Math.atan2(d9 - c2, d8 - c) - atan2;
                    int i = (atan22 > 0.0d ? 1 : (atan22 == 0.0d ? 0 : -1));
                    char c3 = atan22;
                    if (z2 != (i >= 0)) {
                        c3 = i > 0 ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
                    }
                    double d18 = c * d3;
                    double d19 = c2 * d5;
                    m44383a(path, (d18 * cos) - (d19 * sin), (d18 * sin) + (d19 * cos), d3, d5, d, d2, radians, atan2, c3);
                    return;
                }
                Log.w("PathParser", "Points are too far apart ".concat(String.valueOf(d14)));
                float sqrt2 = (float) (Math.sqrt(d14) / 1.99999d);
                f9 *= sqrt2;
                f8 *= sqrt2;
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: a */
        public static void m44380a(C0838b[] c0838bArr, Path path) {
            int i;
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            float f15;
            float[] fArr = new float[6];
            char c = 'm';
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < c0838bArr.length) {
                    char c2 = c0838bArr[i3].f3569a;
                    float[] fArr2 = c0838bArr[i3].f3570b;
                    float f16 = fArr[0];
                    float f17 = fArr[1];
                    float f18 = fArr[2];
                    float f19 = fArr[3];
                    float f20 = fArr[4];
                    float f21 = fArr[5];
                    float f22 = f16;
                    float f23 = f17;
                    float f24 = f18;
                    float f25 = f19;
                    switch (c2) {
                        case 'A':
                        case 'a':
                            i = 7;
                            f25 = f19;
                            f24 = f18;
                            f23 = f17;
                            f22 = f16;
                            break;
                        case 'C':
                        case 'c':
                            i = 6;
                            f22 = f16;
                            f23 = f17;
                            f24 = f18;
                            f25 = f19;
                            break;
                        case 'H':
                        case 'V':
                        case 'h':
                        case 'v':
                            i = 1;
                            f22 = f16;
                            f23 = f17;
                            f24 = f18;
                            f25 = f19;
                            break;
                        case 'L':
                        case 'M':
                        case 'T':
                        case 'l':
                        case 'm':
                        case 't':
                            i = 2;
                            break;
                        case 'Q':
                        case 'S':
                        case 'q':
                        case 's':
                            i = 4;
                            f22 = f16;
                            f23 = f17;
                            f24 = f18;
                            f25 = f19;
                            break;
                        case 'Z':
                        case 'z':
                            path.close();
                            path.moveTo(f20, f21);
                            f22 = f20;
                            f24 = f22;
                            f23 = f21;
                            f25 = f23;
                            i = 2;
                            break;
                        default:
                            f25 = f19;
                            f24 = f18;
                            f23 = f17;
                            f22 = f16;
                            i = 2;
                            break;
                    }
                    float f26 = f23;
                    float f27 = f22;
                    float f28 = f26;
                    int i4 = 0;
                    while (i4 < fArr2.length) {
                        if (c2 != 'A') {
                            if (c2 != 'C') {
                                if (c2 == 'H') {
                                    int i5 = i4 + 0;
                                    path.lineTo(fArr2[i5], f28);
                                    f27 = fArr2[i5];
                                } else if (c2 == 'Q') {
                                    int i6 = i4;
                                    int i7 = i6 + 0;
                                    float f29 = fArr2[i7];
                                    int i8 = i6 + 1;
                                    float f30 = fArr2[i8];
                                    int i9 = i6 + 2;
                                    int i10 = i6 + 3;
                                    path.quadTo(f29, f30, fArr2[i9], fArr2[i10]);
                                    f = fArr2[i7];
                                    f2 = fArr2[i8];
                                    f27 = fArr2[i9];
                                    f28 = fArr2[i10];
                                } else if (c2 == 'V') {
                                    int i11 = i4 + 0;
                                    path.lineTo(f27, fArr2[i11]);
                                    f28 = fArr2[i11];
                                } else if (c2 != 'a') {
                                    if (c2 == 'c') {
                                        int i12 = i4;
                                        float f31 = fArr2[i12 + 0];
                                        float f32 = fArr2[i12 + 1];
                                        int i13 = i12 + 2;
                                        float f33 = fArr2[i13];
                                        int i14 = i12 + 3;
                                        float f34 = fArr2[i14];
                                        int i15 = i12 + 4;
                                        int i16 = i12 + 5;
                                        path.rCubicTo(f31, f32, f33, f34, fArr2[i15], fArr2[i16]);
                                        f3 = f27 + fArr2[i13];
                                        f6 = f28 + fArr2[i14];
                                        f7 = f27 + fArr2[i15];
                                        f8 = fArr2[i16];
                                    } else if (c2 == 'h') {
                                        int i17 = i4 + 0;
                                        path.rLineTo(fArr2[i17], BitmapDescriptorFactory.HUE_RED);
                                        f27 += fArr2[i17];
                                    } else if (c2 == 'q') {
                                        int i18 = i4;
                                        int i19 = i18 + 0;
                                        float f35 = fArr2[i19];
                                        int i20 = i18 + 1;
                                        float f36 = fArr2[i20];
                                        int i21 = i18 + 2;
                                        int i22 = i18 + 3;
                                        path.rQuadTo(f35, f36, fArr2[i21], fArr2[i22]);
                                        float f37 = fArr2[i19];
                                        float f38 = fArr2[i20];
                                        float f39 = fArr2[i21];
                                        f24 = f37 + f27;
                                        f25 = f28 + f38;
                                        f28 = fArr2[i22] + f28;
                                        f27 += f39;
                                    } else if (c2 == 'v') {
                                        int i23 = i4 + 0;
                                        path.rLineTo(BitmapDescriptorFactory.HUE_RED, fArr2[i23]);
                                        f28 += fArr2[i23];
                                    } else if (c2 == 'L') {
                                        int i24 = i4;
                                        int i25 = i24 + 0;
                                        int i26 = i24 + 1;
                                        path.lineTo(fArr2[i25], fArr2[i26]);
                                        f27 = fArr2[i25];
                                        f28 = fArr2[i26];
                                    } else if (c2 == 'M') {
                                        int i27 = i4;
                                        int i28 = i27 + 0;
                                        f27 = fArr2[i28];
                                        int i29 = i27 + 1;
                                        f28 = fArr2[i29];
                                        if (i27 > 0) {
                                            path.lineTo(fArr2[i28], fArr2[i29]);
                                        } else {
                                            path.moveTo(fArr2[i28], fArr2[i29]);
                                            f21 = f28;
                                            f20 = f27;
                                        }
                                    } else if (c2 == 'S') {
                                        int i30 = i4;
                                        if (c == 'c' || c == 's' || c == 'C' || c == 'S') {
                                            f9 = (f28 * 2.0f) - f25;
                                            f10 = (f27 * 2.0f) - f24;
                                        } else {
                                            float f40 = f27;
                                            f9 = f28;
                                            f10 = f40;
                                        }
                                        int i31 = i30 + 0;
                                        float f41 = fArr2[i31];
                                        int i32 = i30 + 1;
                                        float f42 = fArr2[i32];
                                        int i33 = i30 + 2;
                                        int i34 = i30 + 3;
                                        path.cubicTo(f10, f9, f41, f42, fArr2[i33], fArr2[i34]);
                                        f24 = fArr2[i31];
                                        f25 = fArr2[i32];
                                        f27 = fArr2[i33];
                                        f28 = fArr2[i34];
                                    } else if (c2 == 'T') {
                                        int i35 = i4;
                                        if (c == 'q' || c == 't' || c == 'Q' || c == 'T') {
                                            f27 = (f27 * 2.0f) - f24;
                                            f11 = (f28 * 2.0f) - f25;
                                        } else {
                                            f11 = f28;
                                        }
                                        int i36 = i35 + 0;
                                        int i37 = i35 + 1;
                                        path.quadTo(f27, f11, fArr2[i36], fArr2[i37]);
                                        f4 = fArr2[i36];
                                        f28 = fArr2[i37];
                                        f5 = f11;
                                        f3 = f27;
                                        f27 = f4;
                                        f24 = f3;
                                        f25 = f5;
                                    } else if (c2 == 'l') {
                                        int i38 = i4;
                                        int i39 = i38 + 0;
                                        int i40 = i38 + 1;
                                        path.rLineTo(fArr2[i39], fArr2[i40]);
                                        f27 += fArr2[i39];
                                        f28 += fArr2[i40];
                                    } else if (c2 == 'm') {
                                        int i41 = i4;
                                        int i42 = i41 + 0;
                                        f27 += fArr2[i42];
                                        int i43 = i41 + 1;
                                        f28 += fArr2[i43];
                                        if (i41 > 0) {
                                            path.rLineTo(fArr2[i42], fArr2[i43]);
                                        } else {
                                            path.rMoveTo(fArr2[i42], fArr2[i43]);
                                            f21 = f28;
                                            f20 = f27;
                                        }
                                    } else if (c2 == 's') {
                                        if (c == 'c' || c == 's' || c == 'C' || c == 'S') {
                                            f13 = f28 - f25;
                                            f12 = f27 - f24;
                                        } else {
                                            f12 = 0.0f;
                                            f13 = 0.0f;
                                        }
                                        int i44 = i4 + 0;
                                        float f43 = fArr2[i44];
                                        int i45 = i4 + 1;
                                        float f44 = fArr2[i45];
                                        int i46 = i4 + 2;
                                        float f45 = fArr2[i46];
                                        int i47 = i4 + 3;
                                        path.rCubicTo(f12, f13, f43, f44, f45, fArr2[i47]);
                                        f3 = f27 + fArr2[i44];
                                        f6 = f28 + fArr2[i45];
                                        f7 = f27 + fArr2[i46];
                                        f8 = fArr2[i47];
                                    } else if (c2 == 't') {
                                        if (c == 'q' || c == 't' || c == 'Q' || c == 'T') {
                                            f15 = f27 - f24;
                                            f14 = f28 - f25;
                                        } else {
                                            f14 = 0.0f;
                                            f15 = 0.0f;
                                        }
                                        int i48 = i4 + 0;
                                        float f46 = fArr2[i48];
                                        int i49 = i4 + 1;
                                        path.rQuadTo(f15, f14, f46, fArr2[i49]);
                                        float f47 = f27 + fArr2[i48];
                                        f25 = f14 + f28;
                                        f24 = f15 + f27;
                                        f28 += fArr2[i49];
                                        f27 = f47;
                                    }
                                    f28 = f8 + f28;
                                    f5 = f6;
                                    f4 = f7;
                                    f27 = f4;
                                    f24 = f3;
                                    f25 = f5;
                                } else {
                                    int i50 = i4;
                                    int i51 = i50 + 5;
                                    float f48 = fArr2[i51];
                                    int i52 = i50 + 6;
                                    m44382a(path, f27, f28, f48 + f27, fArr2[i52] + f28, fArr2[i50 + 0], fArr2[i50 + 1], fArr2[i50 + 2], fArr2[i50 + 3] != BitmapDescriptorFactory.HUE_RED, fArr2[i50 + 4] != BitmapDescriptorFactory.HUE_RED);
                                    f27 += fArr2[i51];
                                    f28 += fArr2[i52];
                                }
                                i4 += i;
                                c = c2;
                                c2 = c2;
                            } else {
                                int i53 = i4;
                                float f49 = fArr2[i53 + 0];
                                float f50 = fArr2[i53 + 1];
                                int i54 = i53 + 2;
                                float f51 = fArr2[i54];
                                int i55 = i53 + 3;
                                float f52 = fArr2[i55];
                                int i56 = i53 + 4;
                                int i57 = i53 + 5;
                                path.cubicTo(f49, f50, f51, f52, fArr2[i56], fArr2[i57]);
                                f27 = fArr2[i56];
                                f28 = fArr2[i57];
                                f = fArr2[i54];
                                f2 = fArr2[i55];
                            }
                            float f53 = f2;
                            f24 = f;
                            f25 = f53;
                            i4 += i;
                            c = c2;
                            c2 = c2;
                        } else {
                            int i58 = i4;
                            int i59 = i58 + 5;
                            float f54 = fArr2[i59];
                            int i60 = i58 + 6;
                            m44382a(path, f27, f28, f54, fArr2[i60], fArr2[i58 + 0], fArr2[i58 + 1], fArr2[i58 + 2], fArr2[i58 + 3] != BitmapDescriptorFactory.HUE_RED, fArr2[i58 + 4] != BitmapDescriptorFactory.HUE_RED);
                            f27 = fArr2[i59];
                            f28 = fArr2[i60];
                        }
                        f25 = f28;
                        f24 = f27;
                        i4 += i;
                        c = c2;
                        c2 = c2;
                    }
                    fArr[0] = f27;
                    fArr[1] = f28;
                    fArr[2] = f24;
                    fArr[3] = f25;
                    fArr[4] = f20;
                    fArr[5] = f21;
                    c = c0838bArr[i3].f3569a;
                    i2 = i3 + 1;
                } else {
                    return;
                }
            }
        }

        /* renamed from: a */
        public final void m44381a(C0838b c0838b, C0838b c0838b2, float f) {
            this.f3569a = c0838b.f3569a;
            int i = 0;
            while (true) {
                float[] fArr = c0838b.f3570b;
                if (i < fArr.length) {
                    this.f3570b[i] = (fArr[i] * (1.0f - f)) + (c0838b2.f3570b[i] * f);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    private C0836c() {
    }

    /* renamed from: a */
    private static int m44390a(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                return i;
            }
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static Path m44391a(String str) {
        Path path = new Path();
        C0838b[] m44385b = m44385b(str);
        if (m44385b != null) {
            try {
                C0838b.m44380a(m44385b, path);
                return path;
            } catch (RuntimeException e) {
                throw new RuntimeException("Error in parsing ".concat(String.valueOf(str)), e);
            }
        }
        return null;
    }

    /* renamed from: a */
    private static void m44389a(ArrayList<C0838b> arrayList, char c, float[] fArr) {
        arrayList.add(new C0838b(c, fArr));
    }

    /* renamed from: a */
    public static boolean m44386a(C0838b[] c0838bArr, C0838b[] c0838bArr2) {
        if (c0838bArr == null || c0838bArr2 == null || c0838bArr.length != c0838bArr2.length) {
            return false;
        }
        for (int i = 0; i < c0838bArr.length; i++) {
            if (c0838bArr[i].f3569a != c0838bArr2[i].f3569a || c0838bArr[i].f3570b.length != c0838bArr2[i].f3570b.length) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    static float[] m44388a(float[] fArr, int i) {
        if (i >= 0) {
            int length = fArr.length;
            if (length < 0) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i2 = i + 0;
            float[] fArr2 = new float[i2];
            System.arraycopy(fArr, 0, fArr2, 0, Math.min(i2, length - 0));
            return fArr2;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static C0838b[] m44387a(C0838b[] c0838bArr) {
        if (c0838bArr == null) {
            return null;
        }
        C0838b[] c0838bArr2 = new C0838b[c0838bArr.length];
        for (int i = 0; i < c0838bArr.length; i++) {
            c0838bArr2[i] = new C0838b(c0838bArr[i]);
        }
        return c0838bArr2;
    }

    /* renamed from: b */
    public static C0838b[] m44385b(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int m44390a = m44390a(str, i);
            String trim = str.substring(i2, m44390a).trim();
            if (trim.length() > 0) {
                m44389a(arrayList, trim.charAt(0), m44384c(trim));
            }
            i2 = m44390a;
            i = m44390a + 1;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            m44389a(arrayList, str.charAt(i2), new float[0]);
        }
        return (C0838b[]) arrayList.toArray(new C0838b[arrayList.size()]);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d0 A[LOOP:1: B:12:0x0049->B:37:0x00d0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ed A[Catch: NumberFormatException -> 0x012a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {NumberFormatException -> 0x012a, blocks: (B:6:0x0017, B:10:0x0037, B:12:0x0049, B:14:0x0052, B:26:0x009d, B:31:0x00b1, B:38:0x00d6, B:41:0x00ed, B:43:0x0102, B:48:0x0121), top: B:55:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0109 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00d6 A[SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static float[] m44384c(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.C0836c.m44384c(java.lang.String):float[]");
    }
}
