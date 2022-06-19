package p087f0;

import android.graphics.Path;
import android.util.Log;
import com.google.android.gms.internal.ads.C1676a;
import me.zhanghai.android.materialprogressbar.C3681R;
/* renamed from: f0.d */
/* loaded from: classes-dex2jar.jar:f0/d.class */
public class C2697d {

    /* renamed from: f0.d$a */
    /* loaded from: classes-dex2jar.jar:f0/d$a.class */
    public static class C2698a {

        /* renamed from: a */
        public char f9277a;

        /* renamed from: b */
        public float[] f9278b;

        public C2698a(char c, float[] fArr) {
            this.f9277a = c;
            this.f9278b = fArr;
        }

        public C2698a(C2698a c2698a) {
            this.f9277a = c2698a.f9277a;
            float[] fArr = c2698a.f9278b;
            this.f9278b = C2697d.m3249b(fArr, 0, fArr.length);
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [double] */
        /* JADX WARN: Type inference failed for: r0v108, types: [double] */
        /* JADX WARN: Type inference failed for: r0v115, types: [double] */
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
        public static void m3245a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
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
            if (d12 == 0.0d) {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d13 = (1.0d / d12) - 0.25d;
            if (d13 < 0.0d) {
                Log.w("PathParser", "Points are too far apart " + d12);
                float sqrt = (float) (Math.sqrt(d12) / 1.99999d);
                m3245a(path, f, f2, f3, f4, f5 * sqrt, f6 * sqrt, f7, z, z2);
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
            int i = 0;
            int i2 = (atan22 > 0.0d ? 1 : (atan22 == 0.0d ? 0 : -1));
            char c3 = atan22;
            if (z2 != (i2 >= 0)) {
                c3 = i2 > 0 ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
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
            char c6 = r02;
            char c7 = r0;
            while (i < ceil) {
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
                i++;
                atan2 = r03;
                c5 = r07;
                c4 = r06;
                c7 = r04;
                c6 = r05;
            }
        }

        /* renamed from: b */
        public static void m3244b(C2698a[] c2698aArr, Path path) {
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
            float[] fArr = new float[6];
            char c = 'm';
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < c2698aArr.length) {
                    char c2 = c2698aArr[i3].f9277a;
                    float[] fArr2 = c2698aArr[i3].f9278b;
                    float f13 = fArr[0];
                    float f14 = fArr[1];
                    float f15 = fArr[2];
                    float f16 = fArr[3];
                    float f17 = fArr[4];
                    float f18 = fArr[5];
                    switch (c2) {
                        case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                        case C3681R.styleable.AppCompatTheme_selectableItemBackground /* 97 */:
                            i = 7;
                            break;
                        case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                        case C3681R.styleable.AppCompatTheme_spinnerDropDownItemStyle /* 99 */:
                            i = 6;
                            break;
                        case C3681R.styleable.AppCompatTheme_imageButtonStyle /* 72 */:
                        case C3681R.styleable.AppCompatTheme_panelBackground /* 86 */:
                        case 'h':
                        case C3681R.styleable.AppCompatTheme_windowActionBarOverlay /* 118 */:
                            i = 1;
                            break;
                        case C3681R.styleable.AppCompatTheme_listPreferredItemHeightSmall /* 81 */:
                        case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingLeft /* 83 */:
                        case C3681R.styleable.AppCompatTheme_toolbarStyle /* 113 */:
                        case C3681R.styleable.AppCompatTheme_tooltipFrameBackground /* 115 */:
                            i = 4;
                            break;
                        case C3681R.styleable.AppCompatTheme_popupWindowStyle /* 90 */:
                        case C3681R.styleable.AppCompatTheme_windowFixedWidthMajor /* 122 */:
                            path.close();
                            path.moveTo(f17, f18);
                            f13 = f17;
                            f15 = f13;
                            f14 = f18;
                            f16 = f14;
                        default:
                            i = 2;
                            break;
                    }
                    float f19 = f14;
                    float f20 = f13;
                    float f21 = f19;
                    int i4 = 0;
                    while (i4 < fArr2.length) {
                        if (c2 != 'A') {
                            if (c2 != 'C') {
                                if (c2 == 'H') {
                                    int i5 = i4 + 0;
                                    path.lineTo(fArr2[i5], f21);
                                    f20 = fArr2[i5];
                                } else if (c2 == 'Q') {
                                    int i6 = i4;
                                    int i7 = i6 + 0;
                                    float f22 = fArr2[i7];
                                    int i8 = i6 + 1;
                                    float f23 = fArr2[i8];
                                    int i9 = i6 + 2;
                                    int i10 = i6 + 3;
                                    path.quadTo(f22, f23, fArr2[i9], fArr2[i10]);
                                    f = fArr2[i7];
                                    f2 = fArr2[i8];
                                    f20 = fArr2[i9];
                                    f21 = fArr2[i10];
                                } else if (c2 == 'V') {
                                    int i11 = i4 + 0;
                                    path.lineTo(f20, fArr2[i11]);
                                    f21 = fArr2[i11];
                                } else if (c2 != 'a') {
                                    if (c2 == 'c') {
                                        int i12 = i4;
                                        float f24 = fArr2[i12 + 0];
                                        float f25 = fArr2[i12 + 1];
                                        int i13 = i12 + 2;
                                        float f26 = fArr2[i13];
                                        int i14 = i12 + 3;
                                        float f27 = fArr2[i14];
                                        int i15 = i12 + 4;
                                        int i16 = i12 + 5;
                                        path.rCubicTo(f24, f25, f26, f27, fArr2[i15], fArr2[i16]);
                                        float f28 = fArr2[i13] + f20;
                                        f16 = fArr2[i14] + f21;
                                        f4 = f20 + fArr2[i15];
                                        f3 = fArr2[i16];
                                        f5 = f28;
                                    } else if (c2 == 'h') {
                                        int i17 = i4 + 0;
                                        path.rLineTo(fArr2[i17], 0.0f);
                                        f20 += fArr2[i17];
                                    } else if (c2 != 'q') {
                                        if (c2 == 'v') {
                                            int i18 = i4 + 0;
                                            path.rLineTo(0.0f, fArr2[i18]);
                                            f6 = fArr2[i18];
                                        } else if (c2 == 'L') {
                                            int i19 = i4;
                                            int i20 = i19 + 0;
                                            int i21 = i19 + 1;
                                            path.lineTo(fArr2[i20], fArr2[i21]);
                                            f20 = fArr2[i20];
                                            f21 = fArr2[i21];
                                        } else if (c2 == 'M') {
                                            int i22 = i4;
                                            int i23 = i22 + 0;
                                            f20 = fArr2[i23];
                                            int i24 = i22 + 1;
                                            f21 = fArr2[i24];
                                            if (i22 > 0) {
                                                path.lineTo(fArr2[i23], fArr2[i24]);
                                            } else {
                                                path.moveTo(fArr2[i23], fArr2[i24]);
                                                f17 = f20;
                                                f18 = f21;
                                                f20 = f17;
                                                f21 = f18;
                                            }
                                        } else if (c2 == 'S') {
                                            int i25 = i4;
                                            if (c == 'c' || c == 's' || c == 'C' || c == 'S') {
                                                f21 = (f21 * 2.0f) - f16;
                                                f20 = (f20 * 2.0f) - f15;
                                            }
                                            int i26 = i25 + 0;
                                            float f29 = fArr2[i26];
                                            int i27 = i25 + 1;
                                            float f30 = fArr2[i27];
                                            int i28 = i25 + 2;
                                            int i29 = i25 + 3;
                                            path.cubicTo(f20, f21, f29, f30, fArr2[i28], fArr2[i29]);
                                            f15 = fArr2[i26];
                                            f16 = fArr2[i27];
                                            f20 = fArr2[i28];
                                            f21 = fArr2[i29];
                                        } else if (c2 == 'T') {
                                            int i30 = i4;
                                            if (c == 'q' || c == 't' || c == 'Q' || c == 'T') {
                                                f8 = (f20 * 2.0f) - f15;
                                                f7 = (f21 * 2.0f) - f16;
                                            } else {
                                                float f31 = f20;
                                                f7 = f21;
                                                f8 = f31;
                                            }
                                            int i31 = i30 + 0;
                                            int i32 = i30 + 1;
                                            path.quadTo(f8, f7, fArr2[i31], fArr2[i32]);
                                            f16 = f7;
                                            f20 = fArr2[i31];
                                            f15 = f8;
                                            f21 = fArr2[i32];
                                        } else if (c2 == 'l') {
                                            int i33 = i4;
                                            int i34 = i33 + 0;
                                            int i35 = i33 + 1;
                                            path.rLineTo(fArr2[i34], fArr2[i35]);
                                            f20 += fArr2[i34];
                                            f6 = fArr2[i35];
                                        } else if (c2 == 'm') {
                                            int i36 = i4;
                                            int i37 = i36 + 0;
                                            f20 += fArr2[i37];
                                            int i38 = i36 + 1;
                                            f21 += fArr2[i38];
                                            if (i36 > 0) {
                                                path.rLineTo(fArr2[i37], fArr2[i38]);
                                            } else {
                                                path.rMoveTo(fArr2[i37], fArr2[i38]);
                                                f17 = f20;
                                                f18 = f21;
                                                f20 = f17;
                                                f21 = f18;
                                            }
                                        } else if (c2 == 's') {
                                            if (c == 'c' || c == 's' || c == 'C' || c == 'S') {
                                                f10 = f21 - f16;
                                                f9 = f20 - f15;
                                            } else {
                                                f9 = 0.0f;
                                                f10 = 0.0f;
                                            }
                                            int i39 = i4 + 0;
                                            float f32 = fArr2[i39];
                                            int i40 = i4 + 1;
                                            float f33 = fArr2[i40];
                                            int i41 = i4 + 2;
                                            float f34 = fArr2[i41];
                                            int i42 = i4 + 3;
                                            path.rCubicTo(f9, f10, f32, f33, f34, fArr2[i42]);
                                            float f35 = fArr2[i39] + f20;
                                            f16 = fArr2[i40] + f21;
                                            f4 = f20 + fArr2[i41];
                                            f3 = fArr2[i42];
                                            f5 = f35;
                                        } else if (c2 == 't') {
                                            if (c == 'q' || c == 't' || c == 'Q' || c == 'T') {
                                                f12 = f20 - f15;
                                                f11 = f21 - f16;
                                            } else {
                                                f11 = 0.0f;
                                                f12 = 0.0f;
                                            }
                                            int i43 = i4 + 0;
                                            float f36 = fArr2[i43];
                                            int i44 = i4 + 1;
                                            path.rQuadTo(f12, f11, f36, fArr2[i44]);
                                            f16 = f11 + f21;
                                            f15 = f12 + f20;
                                            f20 += fArr2[i43];
                                            f21 += fArr2[i44];
                                        }
                                        f21 += f6;
                                    } else {
                                        int i45 = i4;
                                        int i46 = i45 + 0;
                                        float f37 = fArr2[i46];
                                        int i47 = i45 + 1;
                                        float f38 = fArr2[i47];
                                        int i48 = i45 + 2;
                                        int i49 = i45 + 3;
                                        path.rQuadTo(f37, f38, fArr2[i48], fArr2[i49]);
                                        float f39 = fArr2[i46] + f20;
                                        f16 = fArr2[i47] + f21;
                                        float f40 = fArr2[i48];
                                        f3 = fArr2[i49];
                                        f5 = f39;
                                        f4 = f20 + f40;
                                    }
                                    f21 += f3;
                                    float f41 = f4;
                                    f15 = f5;
                                    f20 = f41;
                                } else {
                                    int i50 = i4;
                                    int i51 = i50 + 5;
                                    float f42 = fArr2[i51];
                                    int i52 = i50 + 6;
                                    m3245a(path, f20, f21, f42 + f20, fArr2[i52] + f21, fArr2[i50 + 0], fArr2[i50 + 1], fArr2[i50 + 2], fArr2[i50 + 3] != 0.0f, fArr2[i50 + 4] != 0.0f);
                                    f20 += fArr2[i51];
                                    f21 += fArr2[i52];
                                }
                                i4 += i;
                                c = c2;
                                c2 = c2;
                            } else {
                                int i53 = i4;
                                float f43 = fArr2[i53 + 0];
                                float f44 = fArr2[i53 + 1];
                                int i54 = i53 + 2;
                                float f45 = fArr2[i54];
                                int i55 = i53 + 3;
                                float f46 = fArr2[i55];
                                int i56 = i53 + 4;
                                int i57 = i53 + 5;
                                path.cubicTo(f43, f44, f45, f46, fArr2[i56], fArr2[i57]);
                                f20 = fArr2[i56];
                                f21 = fArr2[i57];
                                f = fArr2[i54];
                                f2 = fArr2[i55];
                            }
                            float f47 = f;
                            f16 = f2;
                            f15 = f47;
                            i4 += i;
                            c = c2;
                            c2 = c2;
                        } else {
                            int i58 = i4;
                            int i59 = i58 + 5;
                            float f48 = fArr2[i59];
                            int i60 = i58 + 6;
                            m3245a(path, f20, f21, f48, fArr2[i60], fArr2[i58 + 0], fArr2[i58 + 1], fArr2[i58 + 2], fArr2[i58 + 3] != 0.0f, fArr2[i58 + 4] != 0.0f);
                            f20 = fArr2[i59];
                            f21 = fArr2[i60];
                        }
                        f16 = f21;
                        f15 = f20;
                        i4 += i;
                        c = c2;
                        c2 = c2;
                    }
                    fArr[0] = f20;
                    fArr[1] = f21;
                    fArr[2] = f15;
                    fArr[3] = f16;
                    fArr[4] = f17;
                    fArr[5] = f18;
                    c = c2698aArr[i3].f9277a;
                    i2 = i3 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m3250a(C2698a[] c2698aArr, C2698a[] c2698aArr2) {
        if (c2698aArr == null || c2698aArr2 == null || c2698aArr.length != c2698aArr2.length) {
            return false;
        }
        for (int i = 0; i < c2698aArr.length; i++) {
            if (c2698aArr[i].f9277a != c2698aArr2[i].f9277a || c2698aArr[i].f9278b.length != c2698aArr2[i].f9278b.length) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static float[] m3249b(float[] fArr, int i, int i2) {
        if (i <= i2) {
            int length = fArr.length;
            if (i < 0 || i > length) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = i2 - i;
            int min = Math.min(i3, length - i);
            float[] fArr2 = new float[i3];
            System.arraycopy(fArr, i, fArr2, 0, min);
            return fArr2;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x013f, code lost:
        if (r17 == false) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0171 A[LOOP:3: B:30:0x00b4->B:58:0x0171, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01e5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x016b A[SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p087f0.C2697d.C2698a[] m3248c(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p087f0.C2697d.m3248c(java.lang.String):f0.d$a[]");
    }

    /* renamed from: d */
    public static Path m3247d(String str) {
        Path path = new Path();
        C2698a[] m3248c = m3248c(str);
        if (m3248c != null) {
            try {
                C2698a.m3244b(m3248c, path);
                return path;
            } catch (RuntimeException e) {
                throw new RuntimeException(C1676a.m4789h("Error in parsing ", str), e);
            }
        }
        return null;
    }

    /* renamed from: e */
    public static C2698a[] m3246e(C2698a[] c2698aArr) {
        if (c2698aArr == null) {
            return null;
        }
        C2698a[] c2698aArr2 = new C2698a[c2698aArr.length];
        for (int i = 0; i < c2698aArr.length; i++) {
            c2698aArr2[i] = new C2698a(c2698aArr[i]);
        }
        return c2698aArr2;
    }
}
