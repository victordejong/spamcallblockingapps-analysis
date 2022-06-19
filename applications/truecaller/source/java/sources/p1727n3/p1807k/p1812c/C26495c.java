package p1727n3.p1807k.p1812c;

import android.graphics.Path;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
/* renamed from: n3.k.c.c */
/* loaded from: classes-dex2jar.jar:n3/k/c/c.class */
public class C26495c {

    /* renamed from: a */
    public char f74281a;

    /* renamed from: b */
    public float[] f74282b;

    public C26495c(char c, float[] fArr) {
        this.f74281a = c;
        this.f74282b = fArr;
    }

    public C26495c(C26495c c26495c) {
        this.f74281a = c26495c.f74281a;
        float[] fArr = c26495c.f74282b;
        this.f74282b = MediaSessionCompat.m43298I(fArr, 0, fArr.length);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [double] */
    /* JADX WARN: Type inference failed for: r0v107, types: [double] */
    /* JADX WARN: Type inference failed for: r0v114, types: [double] */
    /* JADX WARN: Type inference failed for: r0v128, types: [double] */
    /* JADX WARN: Type inference failed for: r0v137, types: [double] */
    /* JADX WARN: Type inference failed for: r0v140, types: [double] */
    /* JADX WARN: Type inference failed for: r0v143, types: [double] */
    /* JADX WARN: Type inference failed for: r0v146, types: [double] */
    /* JADX WARN: Type inference failed for: r0v171, types: [double] */
    /* JADX WARN: Type inference failed for: r0v173, types: [double] */
    /* JADX WARN: Type inference failed for: r0v177, types: [double] */
    /* JADX WARN: Type inference failed for: r0v179, types: [double] */
    /* JADX WARN: Type inference failed for: r0v181, types: [double] */
    /* JADX WARN: Type inference failed for: r0v183, types: [double] */
    /* JADX WARN: Type inference failed for: r0v68, types: [double] */
    /* JADX WARN: Type inference failed for: r0v72, types: [double] */
    /* JADX WARN: Type inference failed for: r0v8, types: [double] */
    /* renamed from: a */
    public static void m1742a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
        char c;
        char c2;
        double radians = Math.toRadians(f7);
        double cos = Math.cos(radians);
        double sin = Math.sin(radians);
        ?? r0 = f;
        ?? r02 = f2;
        double d = f5;
        double d2 = ((r02 * sin) + (r0 * cos)) / d;
        double d3 = f6;
        double d4 = ((r02 * cos) + ((-f) * sin)) / d3;
        double d5 = f4;
        double d6 = ((d5 * sin) + (f3 * cos)) / d;
        double d7 = ((d5 * cos) + ((-f3) * sin)) / d3;
        double d8 = d2 - d6;
        double d9 = d4 - d7;
        double d10 = (d2 + d6) / 2.0d;
        double d11 = (d4 + d7) / 2.0d;
        double d12 = (d9 * d9) + (d8 * d8);
        if (d12 == PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
            return;
        }
        double d13 = (1.0d / d12) - 0.25d;
        if (d13 < PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
            float sqrt = (float) (Math.sqrt(d12) / 1.99999d);
            m1742a(path, f, f2, f3, f4, f5 * sqrt, f6 * sqrt, f7, z, z2);
            return;
        }
        double sqrt2 = Math.sqrt(d13);
        double d14 = d8 * sqrt2;
        double d15 = sqrt2 * d9;
        if (z == z2) {
            c = d10 - d15;
            c2 = d11 + d14;
        } else {
            c = d10 + d15;
            c2 = d11 - d14;
        }
        char atan2 = Math.atan2(d4 - c2, d2 - c);
        ?? atan22 = Math.atan2(d7 - c2, d6 - c) - atan2;
        int i = (atan22 > PlaceLikelihood.LIKELIHOOD_MIN_VALUE ? 1 : (atan22 == PlaceLikelihood.LIKELIHOOD_MIN_VALUE ? 0 : -1));
        char c3 = atan22;
        if (z2 != (i >= 0)) {
            c3 = i > 0 ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
        }
        double d16 = c * d;
        double d17 = c2 * d3;
        double d18 = (d16 * cos) - (d17 * sin);
        int ceil = (int) Math.ceil(Math.abs((c3 * 0) / 3.141592653589793d));
        double cos2 = Math.cos(radians);
        double sin2 = Math.sin(radians);
        double cos3 = Math.cos(atan2);
        double sin3 = Math.sin(atan2);
        double d19 = -d;
        double d20 = d19 * cos2;
        double d21 = d3 * sin2;
        char c4 = (d20 * sin3) - (d21 * cos3);
        double d22 = d19 * sin2;
        double d23 = d3 * cos2;
        char c5 = (cos3 * d23) + (sin3 * d22);
        double d24 = c3 / ceil;
        int i2 = 0;
        char c6 = r02;
        char c7 = r0;
        while (i2 < ceil) {
            ?? r03 = atan2 + d24;
            double sin4 = Math.sin(r03);
            double cos4 = Math.cos(r03);
            ?? r04 = (((d * cos2) * cos4) + d18) - (d21 * sin4);
            ?? r05 = (d23 * sin4) + (d * sin2 * cos4) + (d17 * cos) + (d16 * sin);
            ?? r06 = (d20 * sin4) - (d21 * cos4);
            ?? r07 = (cos4 * d23) + (sin4 * d22);
            double d25 = r03 - atan2;
            double tan = Math.tan(d25 / 2.0d);
            double sqrt3 = ((Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d) * Math.sin(d25)) / 3.0d;
            path.rLineTo(0.0f, 0.0f);
            path.cubicTo((float) ((c4 * sqrt3) + c7), (float) ((c5 * sqrt3) + c6), (float) (r04 - (sqrt3 * r06)), (float) (r05 - (sqrt3 * r07)), (float) r04, (float) r05);
            i2++;
            atan2 = r03;
            c5 = r07;
            c4 = r06;
            c7 = r04;
            c6 = r05;
        }
    }

    /* renamed from: b */
    public static void m1741b(C26495c[] c26495cArr, Path path) {
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
        float[] fArr = new float[6];
        int i2 = 0;
        char c = 'm';
        int i3 = 0;
        while (i3 < c26495cArr.length) {
            char c2 = c26495cArr[i3].f74281a;
            float[] fArr2 = c26495cArr[i3].f74282b;
            float f15 = fArr[i2];
            float f16 = fArr[1];
            float f17 = fArr[2];
            float f18 = fArr[3];
            float f19 = fArr[4];
            float f20 = fArr[5];
            switch (c2) {
                case 'A':
                case 'a':
                    i = 7;
                    break;
                case 'C':
                case 'c':
                    i = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f19, f20);
                    f15 = f19;
                    f17 = f15;
                    f16 = f20;
                    f18 = f16;
                default:
                    i = 2;
                    break;
            }
            float f21 = f16;
            int i4 = i2;
            int i5 = i2;
            int i6 = i3;
            char c3 = c2;
            float f22 = f15;
            float f23 = f21;
            int i7 = i4;
            while (i7 < fArr2.length) {
                if (c3 != 'A') {
                    if (c3 != 'C') {
                        if (c3 == 'H') {
                            int i8 = i7 + 0;
                            path.lineTo(fArr2[i8], f23);
                            f22 = fArr2[i8];
                        } else if (c3 == 'Q') {
                            int i9 = i7;
                            int i10 = i9 + 0;
                            float f24 = fArr2[i10];
                            int i11 = i9 + 1;
                            float f25 = fArr2[i11];
                            int i12 = i9 + 2;
                            int i13 = i9 + 3;
                            path.quadTo(f24, f25, fArr2[i12], fArr2[i13]);
                            f = fArr2[i10];
                            f2 = fArr2[i11];
                            f22 = fArr2[i12];
                            f23 = fArr2[i13];
                        } else if (c3 == 'V') {
                            int i14 = i7 + 0;
                            path.lineTo(f22, fArr2[i14]);
                            f23 = fArr2[i14];
                        } else if (c3 != 'a') {
                            if (c3 == 'c') {
                                int i15 = i7;
                                float f26 = fArr2[i15 + 0];
                                float f27 = fArr2[i15 + 1];
                                int i16 = i15 + 2;
                                float f28 = fArr2[i16];
                                int i17 = i15 + 3;
                                float f29 = fArr2[i17];
                                int i18 = i15 + 4;
                                int i19 = i15 + 5;
                                path.rCubicTo(f26, f27, f28, f29, fArr2[i18], fArr2[i19]);
                                float f30 = fArr2[i16] + f22;
                                f18 = fArr2[i17] + f23;
                                f4 = f22 + fArr2[i18];
                                f3 = fArr2[i19];
                                f5 = f30;
                            } else if (c3 == 'h') {
                                int i20 = i7 + 0;
                                path.rLineTo(fArr2[i20], 0.0f);
                                f22 += fArr2[i20];
                            } else if (c3 != 'q') {
                                if (c3 == 'v') {
                                    int i21 = i7 + 0;
                                    path.rLineTo(0.0f, fArr2[i21]);
                                    f6 = fArr2[i21];
                                } else if (c3 == 'L') {
                                    int i22 = i7;
                                    int i23 = i22 + 0;
                                    int i24 = i22 + 1;
                                    path.lineTo(fArr2[i23], fArr2[i24]);
                                    f22 = fArr2[i23];
                                    f23 = fArr2[i24];
                                } else if (c3 == 'M') {
                                    int i25 = i7;
                                    int i26 = i25 + 0;
                                    f22 = fArr2[i26];
                                    int i27 = i25 + 1;
                                    f23 = fArr2[i27];
                                    if (i25 > 0) {
                                        path.lineTo(fArr2[i26], fArr2[i27]);
                                    } else {
                                        path.moveTo(fArr2[i26], fArr2[i27]);
                                        f20 = f23;
                                        f19 = f22;
                                        f22 = f19;
                                        f23 = f20;
                                    }
                                } else if (c3 == 'S') {
                                    int i28 = i7;
                                    if (c == 'c' || c == 's' || c == 'C' || c == 'S') {
                                        f7 = (f23 * 2.0f) - f18;
                                        f8 = (f22 * 2.0f) - f17;
                                    } else {
                                        float f31 = f22;
                                        f7 = f23;
                                        f8 = f31;
                                    }
                                    int i29 = i28 + 0;
                                    float f32 = fArr2[i29];
                                    int i30 = i28 + 1;
                                    float f33 = fArr2[i30];
                                    int i31 = i28 + 2;
                                    int i32 = i28 + 3;
                                    path.cubicTo(f8, f7, f32, f33, fArr2[i31], fArr2[i32]);
                                    f17 = fArr2[i29];
                                    f18 = fArr2[i30];
                                    f22 = fArr2[i31];
                                    f23 = fArr2[i32];
                                } else if (c3 == 'T') {
                                    int i33 = i7;
                                    if (c == 'q' || c == 't' || c == 'Q' || c == 'T') {
                                        f10 = (f22 * 2.0f) - f17;
                                        f9 = (f23 * 2.0f) - f18;
                                    } else {
                                        float f34 = f22;
                                        f9 = f23;
                                        f10 = f34;
                                    }
                                    int i34 = i33 + 0;
                                    int i35 = i33 + 1;
                                    path.quadTo(f10, f9, fArr2[i34], fArr2[i35]);
                                    float f35 = fArr2[i34];
                                    f17 = f10;
                                    f18 = f9;
                                    f23 = fArr2[i35];
                                    f22 = f35;
                                } else if (c3 == 'l') {
                                    int i36 = i7;
                                    int i37 = i36 + 0;
                                    int i38 = i36 + 1;
                                    path.rLineTo(fArr2[i37], fArr2[i38]);
                                    f22 += fArr2[i37];
                                    f6 = fArr2[i38];
                                } else if (c3 == 'm') {
                                    int i39 = i7;
                                    int i40 = i39 + 0;
                                    f22 += fArr2[i40];
                                    int i41 = i39 + 1;
                                    f23 += fArr2[i41];
                                    if (i39 > 0) {
                                        path.rLineTo(fArr2[i40], fArr2[i41]);
                                    } else {
                                        path.rMoveTo(fArr2[i40], fArr2[i41]);
                                        f19 = f22;
                                        f20 = f23;
                                        f22 = f19;
                                        f23 = f20;
                                    }
                                } else if (c3 == 's') {
                                    if (c == 'c' || c == 's' || c == 'C' || c == 'S') {
                                        f12 = f23 - f18;
                                        f11 = f22 - f17;
                                    } else {
                                        f11 = 0.0f;
                                        f12 = 0.0f;
                                    }
                                    int i42 = i7 + 0;
                                    float f36 = fArr2[i42];
                                    int i43 = i7 + 1;
                                    float f37 = fArr2[i43];
                                    int i44 = i7 + 2;
                                    float f38 = fArr2[i44];
                                    int i45 = i7 + 3;
                                    path.rCubicTo(f11, f12, f36, f37, f38, fArr2[i45]);
                                    float f39 = fArr2[i42] + f22;
                                    f18 = fArr2[i43] + f23;
                                    f4 = f22 + fArr2[i44];
                                    f3 = fArr2[i45];
                                    f5 = f39;
                                } else if (c3 == 't') {
                                    if (c == 'q' || c == 't' || c == 'Q' || c == 'T') {
                                        f14 = f22 - f17;
                                        f13 = f23 - f18;
                                    } else {
                                        f13 = 0.0f;
                                        f14 = 0.0f;
                                    }
                                    int i46 = i7 + 0;
                                    float f40 = fArr2[i46];
                                    int i47 = i7 + 1;
                                    path.rQuadTo(f14, f13, f40, fArr2[i47]);
                                    f18 = f13 + f23;
                                    f17 = f14 + f22;
                                    f22 += fArr2[i46];
                                    f23 += fArr2[i47];
                                }
                                f23 += f6;
                            } else {
                                int i48 = i7;
                                int i49 = i48 + 0;
                                float f41 = fArr2[i49];
                                int i50 = i48 + 1;
                                float f42 = fArr2[i50];
                                int i51 = i48 + 2;
                                int i52 = i48 + 3;
                                path.rQuadTo(f41, f42, fArr2[i51], fArr2[i52]);
                                float f43 = fArr2[i49] + f22;
                                f18 = fArr2[i50] + f23;
                                float f44 = fArr2[i51];
                                f3 = fArr2[i52];
                                f5 = f43;
                                f4 = f22 + f44;
                            }
                            float f45 = f5;
                            f22 = f4;
                            f17 = f45;
                            f23 += f3;
                        } else {
                            int i53 = i7;
                            int i54 = i53 + 5;
                            float f46 = fArr2[i54];
                            int i55 = i53 + 6;
                            m1742a(path, f22, f23, f46 + f22, fArr2[i55] + f23, fArr2[i53 + 0], fArr2[i53 + 1], fArr2[i53 + 2], fArr2[i53 + 3] != 0.0f, fArr2[i53 + 4] != 0.0f);
                            f22 += fArr2[i54];
                            f23 += fArr2[i55];
                        }
                        i7 += i;
                        c = c3;
                        c3 = c3;
                        i5 = 0;
                    } else {
                        int i56 = i7;
                        float f47 = fArr2[i56 + 0];
                        float f48 = fArr2[i56 + 1];
                        int i57 = i56 + 2;
                        float f49 = fArr2[i57];
                        int i58 = i56 + 3;
                        float f50 = fArr2[i58];
                        int i59 = i56 + 4;
                        int i60 = i56 + 5;
                        path.cubicTo(f47, f48, f49, f50, fArr2[i59], fArr2[i60]);
                        f22 = fArr2[i59];
                        f23 = fArr2[i60];
                        f = fArr2[i57];
                        f2 = fArr2[i58];
                    }
                    float f51 = f2;
                    f17 = f;
                    f18 = f51;
                    i7 += i;
                    c = c3;
                    c3 = c3;
                    i5 = 0;
                } else {
                    int i61 = i7;
                    int i62 = i61 + 5;
                    float f52 = fArr2[i62];
                    int i63 = i61 + 6;
                    m1742a(path, f22, f23, f52, fArr2[i63], fArr2[i61 + 0], fArr2[i61 + 1], fArr2[i61 + 2], fArr2[i61 + 3] != 0.0f, fArr2[i61 + 4] != 0.0f);
                    f22 = fArr2[i62];
                    f23 = fArr2[i63];
                }
                f18 = f23;
                f17 = f22;
                i7 += i;
                c = c3;
                c3 = c3;
                i5 = 0;
            }
            fArr[i5] = f22;
            fArr[1] = f23;
            fArr[2] = f17;
            fArr[3] = f18;
            fArr[4] = f19;
            fArr[5] = f20;
            c = c26495cArr[i6].f74281a;
            i3 = i6 + 1;
            i2 = i5;
        }
    }
}
