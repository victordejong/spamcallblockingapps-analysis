package androidx.core.graphics;

import android.graphics.Path;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/c.class */
public final class c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f1899a;

        /* renamed from: b  reason: collision with root package name */
        boolean f1900b;

        a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public char f1901a;

        /* renamed from: b  reason: collision with root package name */
        public float[] f1902b;

        b(char c2, float[] fArr) {
            this.f1901a = c2;
            this.f1902b = fArr;
        }

        b(b bVar) {
            this.f1901a = bVar.f1901a;
            float[] fArr = bVar.f1902b;
            this.f1902b = c.a(fArr, fArr.length);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v43, types: [double] */
        /* JADX WARN: Type inference failed for: r0v50, types: [double] */
        /* JADX WARN: Type inference failed for: r0v53, types: [double] */
        /* JADX WARN: Type inference failed for: r0v56, types: [double] */
        /* JADX WARN: Type inference failed for: r0v59, types: [double] */
        /* JADX WARN: Type inference failed for: r20v0, types: [double] */
        /* JADX WARN: Type inference failed for: r22v0, types: [double] */
        /* JADX WARN: Type inference failed for: r22v2, types: [double] */
        /* JADX WARN: Type inference failed for: r22v3 */
        /* JADX WARN: Type inference failed for: r22v4 */
        /* JADX WARN: Type inference failed for: r26v0, types: [double] */
        /* JADX WARN: Type inference failed for: r47v1, types: [double] */
        /* JADX WARN: Type inference failed for: r47v2 */
        /* JADX WARN: Type inference failed for: r47v3 */
        /* JADX WARN: Unknown variable types count: 7 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static void a(android.graphics.Path r11, double r12, double r14, double r16, double r18, double r20, double r22, double r24, double r26, double r28) {
            /*
                Method dump skipped, instructions count: 366
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.c.b.a(android.graphics.Path, double, double, double, double, double, double, double, double, double):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v79, types: [double] */
        /* JADX WARN: Type inference failed for: r43v1 */
        /* JADX WARN: Type inference failed for: r43v2, types: [double] */
        /* JADX WARN: Type inference failed for: r43v5 */
        /* JADX WARN: Type inference failed for: r43v6 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static void a(android.graphics.Path r20, float r21, float r22, float r23, float r24, float r25, float r26, float r27, boolean r28, boolean r29) {
            /*
                Method dump skipped, instructions count: 465
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.c.b.a(android.graphics.Path, float, float, float, float, float, float, float, boolean, boolean):void");
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public static void a(b[] bVarArr, Path path) {
            int i;
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float[] fArr = new float[6];
            char c2 = 'm';
            for (int i2 = 0; i2 < bVarArr.length; i2++) {
                char c3 = bVarArr[i2].f1901a;
                float[] fArr2 = bVarArr[i2].f1902b;
                float f9 = fArr[0];
                float f10 = fArr[1];
                float f11 = fArr[2];
                float f12 = fArr[3];
                float f13 = fArr[4];
                float f14 = fArr[5];
                float f15 = f9;
                float f16 = f10;
                float f17 = f11;
                float f18 = f12;
                switch (c3) {
                    case 'A':
                    case 'a':
                        i = 7;
                        f18 = f12;
                        f17 = f11;
                        f16 = f10;
                        f15 = f9;
                        break;
                    case 'C':
                    case 'c':
                        i = 6;
                        f15 = f9;
                        f16 = f10;
                        f17 = f11;
                        f18 = f12;
                        break;
                    case 'H':
                    case 'V':
                    case 'h':
                    case 'v':
                        i = 1;
                        f15 = f9;
                        f16 = f10;
                        f17 = f11;
                        f18 = f12;
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
                        f15 = f9;
                        f16 = f10;
                        f17 = f11;
                        f18 = f12;
                        break;
                    case 'Z':
                    case 'z':
                        path.close();
                        path.moveTo(f13, f14);
                        f15 = f13;
                        f17 = f15;
                        f16 = f14;
                        f18 = f16;
                        i = 2;
                        break;
                    default:
                        f18 = f12;
                        f17 = f11;
                        f16 = f10;
                        f15 = f9;
                        i = 2;
                        break;
                }
                int i3 = 0;
                while (i3 < fArr2.length) {
                    if (c3 != 'A') {
                        if (c3 != 'C') {
                            if (c3 == 'H') {
                                int i4 = i3 + 0;
                                path.lineTo(fArr2[i4], f16);
                                f15 = fArr2[i4];
                            } else if (c3 == 'Q') {
                                int i5 = i3 + 0;
                                float f19 = fArr2[i5];
                                int i6 = i3 + 1;
                                float f20 = fArr2[i6];
                                int i7 = i3 + 2;
                                int i8 = i3 + 3;
                                path.quadTo(f19, f20, fArr2[i7], fArr2[i8]);
                                f17 = fArr2[i5];
                                f18 = fArr2[i6];
                                f15 = fArr2[i7];
                                f16 = fArr2[i8];
                            } else if (c3 == 'V') {
                                int i9 = i3 + 0;
                                path.lineTo(f15, fArr2[i9]);
                                f16 = fArr2[i9];
                            } else if (c3 != 'a') {
                                if (c3 == 'c') {
                                    float f21 = fArr2[i3 + 0];
                                    float f22 = fArr2[i3 + 1];
                                    int i10 = i3 + 2;
                                    float f23 = fArr2[i10];
                                    int i11 = i3 + 3;
                                    float f24 = fArr2[i11];
                                    int i12 = i3 + 4;
                                    int i13 = i3 + 5;
                                    path.rCubicTo(f21, f22, f23, f24, fArr2[i12], fArr2[i13]);
                                    f17 = f15 + fArr2[i10];
                                    f18 = f16 + fArr2[i11];
                                    f15 += fArr2[i12];
                                    f = fArr2[i13];
                                } else if (c3 == 'h') {
                                    int i14 = i3 + 0;
                                    path.rLineTo(fArr2[i14], BitmapDescriptorFactory.HUE_RED);
                                    f15 += fArr2[i14];
                                } else if (c3 == 'q') {
                                    int i15 = i3 + 0;
                                    float f25 = fArr2[i15];
                                    int i16 = i3 + 1;
                                    float f26 = fArr2[i16];
                                    int i17 = i3 + 2;
                                    int i18 = i3 + 3;
                                    path.rQuadTo(f25, f26, fArr2[i17], fArr2[i18]);
                                    float f27 = fArr2[i15];
                                    float f28 = fArr2[i16];
                                    f15 += fArr2[i17];
                                    f17 = f27 + f15;
                                    f18 = f16 + f28;
                                    f16 = fArr2[i18] + f16;
                                } else if (c3 == 'v') {
                                    int i19 = i3 + 0;
                                    path.rLineTo(BitmapDescriptorFactory.HUE_RED, fArr2[i19]);
                                    f16 += fArr2[i19];
                                } else if (c3 == 'L') {
                                    int i20 = i3 + 0;
                                    int i21 = i3 + 1;
                                    path.lineTo(fArr2[i20], fArr2[i21]);
                                    f15 = fArr2[i20];
                                    f16 = fArr2[i21];
                                } else if (c3 == 'M') {
                                    int i22 = i3 + 0;
                                    f15 = fArr2[i22];
                                    int i23 = i3 + 1;
                                    f16 = fArr2[i23];
                                    if (i3 > 0) {
                                        path.lineTo(fArr2[i22], fArr2[i23]);
                                    } else {
                                        path.moveTo(fArr2[i22], fArr2[i23]);
                                        f14 = f16;
                                        f13 = f15;
                                    }
                                } else if (c3 == 'S') {
                                    if (c2 == 'c' || c2 == 's' || c2 == 'C' || c2 == 'S') {
                                        f2 = (f16 * 2.0f) - f18;
                                        f3 = (f15 * 2.0f) - f17;
                                    } else {
                                        f2 = f16;
                                        f3 = f15;
                                    }
                                    int i24 = i3 + 0;
                                    float f29 = fArr2[i24];
                                    int i25 = i3 + 1;
                                    float f30 = fArr2[i25];
                                    int i26 = i3 + 2;
                                    int i27 = i3 + 3;
                                    path.cubicTo(f3, f2, f29, f30, fArr2[i26], fArr2[i27]);
                                    f17 = fArr2[i24];
                                    f18 = fArr2[i25];
                                    f15 = fArr2[i26];
                                    f16 = fArr2[i27];
                                } else if (c3 == 'T') {
                                    if (c2 == 'q' || c2 == 't' || c2 == 'Q' || c2 == 'T') {
                                        f15 = (f15 * 2.0f) - f17;
                                        f4 = (f16 * 2.0f) - f18;
                                    } else {
                                        f4 = f16;
                                    }
                                    int i28 = i3 + 0;
                                    int i29 = i3 + 1;
                                    path.quadTo(f15, f4, fArr2[i28], fArr2[i29]);
                                    f15 = fArr2[i28];
                                    f16 = fArr2[i29];
                                    f18 = f4;
                                    f17 = f15;
                                } else if (c3 == 'l') {
                                    int i30 = i3 + 0;
                                    int i31 = i3 + 1;
                                    path.rLineTo(fArr2[i30], fArr2[i31]);
                                    f15 += fArr2[i30];
                                    f16 += fArr2[i31];
                                } else if (c3 == 'm') {
                                    int i32 = i3 + 0;
                                    f15 += fArr2[i32];
                                    int i33 = i3 + 1;
                                    f16 += fArr2[i33];
                                    if (i3 > 0) {
                                        path.rLineTo(fArr2[i32], fArr2[i33]);
                                    } else {
                                        path.rMoveTo(fArr2[i32], fArr2[i33]);
                                        f14 = f16;
                                        f13 = f15;
                                    }
                                } else if (c3 == 's') {
                                    if (c2 == 'c' || c2 == 's' || c2 == 'C' || c2 == 'S') {
                                        f6 = f16 - f18;
                                        f5 = f15 - f17;
                                    } else {
                                        f5 = BitmapDescriptorFactory.HUE_RED;
                                        f6 = BitmapDescriptorFactory.HUE_RED;
                                    }
                                    int i34 = i3 + 0;
                                    float f31 = fArr2[i34];
                                    int i35 = i3 + 1;
                                    float f32 = fArr2[i35];
                                    int i36 = i3 + 2;
                                    float f33 = fArr2[i36];
                                    int i37 = i3 + 3;
                                    path.rCubicTo(f5, f6, f31, f32, f33, fArr2[i37]);
                                    f17 = f15 + fArr2[i34];
                                    f18 = f16 + fArr2[i35];
                                    f15 += fArr2[i36];
                                    f = fArr2[i37];
                                } else if (c3 == 't') {
                                    if (c2 == 'q' || c2 == 't' || c2 == 'Q' || c2 == 'T') {
                                        f8 = f15 - f17;
                                        f7 = f16 - f18;
                                    } else {
                                        f7 = BitmapDescriptorFactory.HUE_RED;
                                        f8 = BitmapDescriptorFactory.HUE_RED;
                                    }
                                    int i38 = i3 + 0;
                                    float f34 = fArr2[i38];
                                    int i39 = i3 + 1;
                                    path.rQuadTo(f8, f7, f34, fArr2[i39]);
                                    f15 += fArr2[i38];
                                    f16 += fArr2[i39];
                                    f18 = f7 + f16;
                                    f17 = f8 + f15;
                                }
                                f16 = f + f16;
                            } else {
                                int i40 = i3 + 5;
                                float f35 = fArr2[i40];
                                int i41 = i3 + 6;
                                a(path, f15, f16, f35 + f15, fArr2[i41] + f16, fArr2[i3 + 0], fArr2[i3 + 1], fArr2[i3 + 2], fArr2[i3 + 3] != BitmapDescriptorFactory.HUE_RED, fArr2[i3 + 4] != BitmapDescriptorFactory.HUE_RED);
                                f15 += fArr2[i40];
                                f16 += fArr2[i41];
                            }
                            i3 += i;
                            c2 = c3;
                            c3 = c3;
                        } else {
                            float f36 = fArr2[i3 + 0];
                            float f37 = fArr2[i3 + 1];
                            int i42 = i3 + 2;
                            float f38 = fArr2[i42];
                            int i43 = i3 + 3;
                            float f39 = fArr2[i43];
                            int i44 = i3 + 4;
                            int i45 = i3 + 5;
                            path.cubicTo(f36, f37, f38, f39, fArr2[i44], fArr2[i45]);
                            f15 = fArr2[i44];
                            f16 = fArr2[i45];
                            f17 = fArr2[i42];
                            f18 = fArr2[i43];
                        }
                        i3 += i;
                        c2 = c3;
                        c3 = c3;
                    } else {
                        int i46 = i3 + 5;
                        float f40 = fArr2[i46];
                        int i47 = i3 + 6;
                        a(path, f15, f16, f40, fArr2[i47], fArr2[i3 + 0], fArr2[i3 + 1], fArr2[i3 + 2], fArr2[i3 + 3] != BitmapDescriptorFactory.HUE_RED, fArr2[i3 + 4] != BitmapDescriptorFactory.HUE_RED);
                        f15 = fArr2[i46];
                        f16 = fArr2[i47];
                    }
                    f18 = f16;
                    f17 = f15;
                    i3 += i;
                    c2 = c3;
                    c3 = c3;
                }
                fArr[0] = f15;
                fArr[1] = f16;
                fArr[2] = f17;
                fArr[3] = f18;
                fArr[4] = f13;
                fArr[5] = f14;
                c2 = bVarArr[i2].f1901a;
            }
        }

        public final void a(b bVar, b bVar2, float f) {
            this.f1901a = bVar.f1901a;
            int i = 0;
            while (true) {
                float[] fArr = bVar.f1902b;
                if (i < fArr.length) {
                    this.f1902b[i] = (fArr[i] * (1.0f - f)) + (bVar2.f1902b[i] * f);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    private c() {
    }

    private static int a(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                return i;
            }
            i++;
        }
        return i;
    }

    public static Path a(String str) {
        Path path = new Path();
        b[] b2 = b(str);
        if (b2 == null) {
            return null;
        }
        try {
            b.a(b2, path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException("Error in parsing ".concat(String.valueOf(str)), e);
        }
    }

    private static void a(ArrayList<b> arrayList, char c2, float[] fArr) {
        arrayList.add(new b(c2, fArr));
    }

    public static boolean a(b[] bVarArr, b[] bVarArr2) {
        if (bVarArr == null || bVarArr2 == null || bVarArr.length != bVarArr2.length) {
            return false;
        }
        for (int i = 0; i < bVarArr.length; i++) {
            if (!(bVarArr[i].f1901a == bVarArr2[i].f1901a && bVarArr[i].f1902b.length == bVarArr2[i].f1902b.length)) {
                return false;
            }
        }
        return true;
    }

    static float[] a(float[] fArr, int i) {
        if (i >= 0) {
            int length = fArr.length;
            if (length >= 0) {
                int i2 = i + 0;
                float[] fArr2 = new float[i2];
                System.arraycopy(fArr, 0, fArr2, 0, Math.min(i2, length - 0));
                return fArr2;
            }
            throw new ArrayIndexOutOfBoundsException();
        }
        throw new IllegalArgumentException();
    }

    public static b[] a(b[] bVarArr) {
        if (bVarArr == null) {
            return null;
        }
        b[] bVarArr2 = new b[bVarArr.length];
        for (int i = 0; i < bVarArr.length; i++) {
            bVarArr2[i] = new b(bVarArr[i]);
        }
        return bVarArr2;
    }

    public static b[] b(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int a2 = a(str, i);
            String trim = str.substring(i2, a2).trim();
            if (trim.length() > 0) {
                a(arrayList, trim.charAt(0), c(trim));
            }
            i2 = a2;
            i = a2 + 1;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            a(arrayList, str.charAt(i2), new float[0]);
        }
        return (b[]) arrayList.toArray(new b[arrayList.size()]);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d0 A[LOOP:1: B:12:0x0049->B:37:0x00d0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ed A[Catch: NumberFormatException -> 0x012a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {NumberFormatException -> 0x012a, blocks: (B:6:0x0017, B:10:0x0037, B:12:0x0049, B:14:0x0052, B:26:0x009d, B:31:0x00b1, B:38:0x00d6, B:41:0x00ed, B:43:0x0102, B:48:0x0121), top: B:55:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0109 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00d6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static float[] c(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.c.c(java.lang.String):float[]");
    }
}
