package androidx.core.graphics;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;
/* renamed from: androidx.core.graphics.b */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/b.class */
public class C0530b {

    /* renamed from: androidx.core.graphics.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/b$a.class */
    public static class C0531a {

        /* renamed from: a */
        int f1962a;

        /* renamed from: b */
        boolean f1963b;

        C0531a() {
        }
    }

    /* renamed from: androidx.core.graphics.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/b$b.class */
    public static class C0532b {

        /* renamed from: a */
        public char f1964a;

        /* renamed from: b */
        public float[] f1965b;

        C0532b(char c, float[] fArr) {
            this.f1964a = c;
            this.f1965b = fArr;
        }

        C0532b(C0532b c0532b) {
            this.f1964a = c0532b.f1964a;
            this.f1965b = C0530b.m20627a(c0532b.f1965b, 0, c0532b.f1965b.length);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [double] */
        /* JADX WARN: Type inference failed for: r0v21, types: [double] */
        /* JADX WARN: Type inference failed for: r0v31, types: [double] */
        /* JADX WARN: Type inference failed for: r0v40, types: [double] */
        /* JADX WARN: Type inference failed for: r0v44, types: [double] */
        /* JADX WARN: Type inference failed for: r0v49, types: [double] */
        /* JADX WARN: Type inference failed for: r0v52, types: [double] */
        /* JADX WARN: Type inference failed for: r20v0, types: [double] */
        /* JADX WARN: Type inference failed for: r22v1 */
        /* JADX WARN: Type inference failed for: r22v2 */
        /* JADX WARN: Type inference failed for: r22v3 */
        /* JADX WARN: Type inference failed for: r26v0, types: [double] */
        /* renamed from: a */
        private static void m20621a(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
            int ceil = (int) Math.ceil(Math.abs((4.0d * d9) / 3.141592653589793d));
            double cos = Math.cos(d7);
            double sin = Math.sin(d7);
            double cos2 = Math.cos(d8);
            double sin2 = Math.sin(d8);
            ?? r0 = (((-d3) * cos) * sin2) - ((d4 * sin) * cos2);
            ?? r02 = (sin2 * (-d3) * sin) + (cos2 * d4 * cos);
            double d10 = d9 / ceil;
            int i = 0;
            char c = d8;
            char c2 = d5;
            char c3 = r0;
            char c4 = r02;
            ?? r22 = d6;
            while (i < ceil) {
                ?? r03 = c + d10;
                double sin3 = Math.sin(r03);
                double cos3 = Math.cos(r03);
                ?? r04 = (((d3 * cos) * cos3) + d) - ((d4 * sin) * sin3);
                ?? r05 = (d4 * cos * sin3) + (d3 * sin * cos3) + d2;
                ?? r06 = (((-d3) * cos) * sin3) - ((d4 * sin) * cos3);
                ?? r07 = (cos3 * d4 * cos) + (sin3 * (-d3) * sin);
                double tan = Math.tan((r03 - c) / 2.0d);
                double sqrt = ((Math.sqrt((tan * (3.0d * tan)) + 4.0d) - 1.0d) * Math.sin(r03 - c)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((c3 * sqrt) + c2), (float) ((c4 * sqrt) + r22), (float) (r04 - (sqrt * r06)), (float) (r05 - (sqrt * r07)), (float) r04, (float) r05);
                i++;
                c4 = r07;
                c3 = r06;
                c = r03;
                r22 = r05;
                c2 = r04;
            }
        }

        /* JADX WARN: Type inference failed for: r0v57, types: [double] */
        /* JADX WARN: Type inference failed for: r0v59, types: [double] */
        /* JADX WARN: Type inference failed for: r0v66, types: [double] */
        /* JADX WARN: Type inference failed for: r0v81, types: [double] */
        /* JADX WARN: Type inference failed for: r0v83, types: [double] */
        /* JADX WARN: Type inference failed for: r0v86, types: [double] */
        /* JADX WARN: Type inference failed for: r0v88, types: [double] */
        /* renamed from: a */
        private static void m20620a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            char c;
            char c2;
            double radians = Math.toRadians(f7);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d = ((f * cos) + (f2 * sin)) / f5;
            double d2 = (((-f) * sin) + (f2 * cos)) / f6;
            double d3 = ((f3 * cos) + (f4 * sin)) / f5;
            double d4 = (((-f3) * sin) + (f4 * cos)) / f6;
            double d5 = d - d3;
            double d6 = d2 - d4;
            double d7 = (d + d3) / 2.0d;
            double d8 = (d2 + d4) / 2.0d;
            double d9 = (d5 * d5) + (d6 * d6);
            if (d9 == 0.0d) {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d10 = (1.0d / d9) - 0.25d;
            if (d10 < 0.0d) {
                Log.w("PathParser", "Points are too far apart " + d9);
                float sqrt = (float) (Math.sqrt(d9) / 1.99999d);
                m20620a(path, f, f2, f3, f4, f5 * sqrt, f6 * sqrt, f7, z, z2);
                return;
            }
            double sqrt2 = Math.sqrt(d10);
            double d11 = d5 * sqrt2;
            double d12 = d6 * sqrt2;
            if (z == z2) {
                c = d7 - d12;
                c2 = d11 + d8;
            } else {
                c = d12 + d7;
                c2 = d8 - d11;
            }
            double atan2 = Math.atan2(d2 - c2, d - c);
            ?? atan22 = Math.atan2(d4 - c2, d3 - c) - atan2;
            char c3 = atan22;
            if (z2 != (atan22 >= 0.0d)) {
                c3 = atan22 > 0.0d ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
            }
            double d13 = f5 * c;
            double d14 = c2 * f6;
            m20621a(path, (d13 * cos) - (d14 * sin), (d13 * sin) + (d14 * cos), f5, f6, f, f2, radians, atan2, c3);
        }

        /* JADX WARN: Code restructure failed: missing block: B:73:0x07f3, code lost:
            if (r26 == 'T') goto L74;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static void m20619a(android.graphics.Path r11, float[] r12, char r13, char r14, float[] r15) {
            /*
                Method dump skipped, instructions count: 2455
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.C0530b.C0532b.m20619a(android.graphics.Path, float[], char, char, float[]):void");
        }

        /* renamed from: a */
        public static void m20617a(C0532b[] c0532bArr, Path path) {
            float[] fArr = new float[6];
            char c = 'm';
            int i = 0;
            while (true) {
                char c2 = c;
                if (i < c0532bArr.length) {
                    m20619a(path, fArr, c2, c0532bArr[i].f1964a, c0532bArr[i].f1965b);
                    c = c0532bArr[i].f1964a;
                    i++;
                } else {
                    return;
                }
            }
        }

        /* renamed from: a */
        public void m20618a(C0532b c0532b, C0532b c0532b2, float f) {
            this.f1964a = c0532b.f1964a;
            for (int i = 0; i < c0532b.f1965b.length; i++) {
                this.f1965b[i] = (c0532b.f1965b[i] * (1.0f - f)) + (c0532b2.f1965b[i] * f);
            }
        }
    }

    /* renamed from: a */
    private static int m20630a(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                break;
            }
            i++;
        }
        return i;
    }

    /* renamed from: a */
    public static Path m20631a(String str) {
        Path path;
        Path path2 = new Path();
        C0532b[] m20624b = m20624b(str);
        if (m20624b != null) {
            try {
                C0532b.m20617a(m20624b, path2);
                path = path2;
            } catch (RuntimeException e) {
                throw new RuntimeException("Error in parsing " + str, e);
            }
        } else {
            path = null;
        }
        return path;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static void m20629a(String str, int i, C0531a c0531a) {
        c0531a.f1963b = false;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (int i2 = i; i2 < str.length(); i2++) {
            switch (str.charAt(i2)) {
                case ' ':
                case ',':
                    z = false;
                    z3 = true;
                    break;
                case '-':
                    if (i2 != i && !z) {
                        c0531a.f1963b = true;
                        z = false;
                        z3 = true;
                        break;
                    }
                    z = false;
                    break;
                case '.':
                    if (!z2) {
                        z = false;
                        z2 = true;
                        break;
                    } else {
                        c0531a.f1963b = true;
                        z = false;
                        z3 = true;
                        break;
                    }
                case 'E':
                case 'e':
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            if (z3) {
                c0531a.f1962a = i2;
            }
        }
        c0531a.f1962a = i2;
    }

    /* renamed from: a */
    private static void m20628a(ArrayList<C0532b> arrayList, char c, float[] fArr) {
        arrayList.add(new C0532b(c, fArr));
    }

    /* renamed from: a */
    public static boolean m20625a(C0532b[] c0532bArr, C0532b[] c0532bArr2) {
        boolean z = false;
        if (c0532bArr != null) {
            if (c0532bArr2 == null) {
                z = false;
            } else {
                z = false;
                if (c0532bArr.length == c0532bArr2.length) {
                    int i = 0;
                    while (true) {
                        if (i >= c0532bArr.length) {
                            z = true;
                            break;
                        }
                        z = false;
                        if (c0532bArr[i].f1964a != c0532bArr2[i].f1964a) {
                            break;
                        }
                        z = false;
                        if (c0532bArr[i].f1965b.length != c0532bArr2[i].f1965b.length) {
                            break;
                        }
                        i++;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    static float[] m20627a(float[] fArr, int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException();
        }
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

    /* renamed from: a */
    public static C0532b[] m20626a(C0532b[] c0532bArr) {
        C0532b[] c0532bArr2;
        if (c0532bArr == null) {
            c0532bArr2 = null;
        } else {
            C0532b[] c0532bArr3 = new C0532b[c0532bArr.length];
            for (int i = 0; i < c0532bArr.length; i++) {
                c0532bArr3[i] = new C0532b(c0532bArr[i]);
            }
            c0532bArr2 = c0532bArr3;
        }
        return c0532bArr2;
    }

    /* renamed from: b */
    public static void m20623b(C0532b[] c0532bArr, C0532b[] c0532bArr2) {
        for (int i = 0; i < c0532bArr2.length; i++) {
            c0532bArr[i].f1964a = c0532bArr2[i].f1964a;
            for (int i2 = 0; i2 < c0532bArr2[i].f1965b.length; i2++) {
                c0532bArr[i].f1965b[i2] = c0532bArr2[i].f1965b[i2];
            }
        }
    }

    /* renamed from: b */
    public static C0532b[] m20624b(String str) {
        int i;
        C0532b[] c0532bArr;
        if (str == null) {
            c0532bArr = null;
        } else {
            ArrayList arrayList = new ArrayList();
            int i2 = 1;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= str.length()) {
                    break;
                }
                int m20630a = m20630a(str, i2);
                String trim = str.substring(i, m20630a).trim();
                if (trim.length() > 0) {
                    m20628a(arrayList, trim.charAt(0), m20622c(trim));
                }
                i2 = m20630a + 1;
                i3 = m20630a;
            }
            if (i2 - i == 1 && i < str.length()) {
                m20628a(arrayList, str.charAt(i), new float[0]);
            }
            c0532bArr = (C0532b[]) arrayList.toArray(new C0532b[arrayList.size()]);
        }
        return c0532bArr;
    }

    /* renamed from: c */
    private static float[] m20622c(String str) {
        float[] fArr;
        int i = 0;
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            fArr = new float[0];
        } else {
            try {
                float[] fArr2 = new float[str.length()];
                C0531a c0531a = new C0531a();
                int length = str.length();
                int i2 = 1;
                while (true) {
                    int i3 = i2;
                    if (i3 >= length) {
                        break;
                    }
                    m20629a(str, i3, c0531a);
                    int i4 = c0531a.f1962a;
                    if (i3 < i4) {
                        int i5 = i + 1;
                        fArr2[i] = Float.parseFloat(str.substring(i3, i4));
                        i = i5;
                    }
                    i2 = c0531a.f1963b ? i4 : i4 + 1;
                }
                fArr = m20627a(fArr2, 0, i);
            } catch (NumberFormatException e) {
                throw new RuntimeException("error in parsing \"" + str + "\"", e);
            }
        }
        return fArr;
    }
}
