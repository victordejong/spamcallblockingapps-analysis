package p020b.p041h.p042e;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;
/* renamed from: b.h.e.c */
/* loaded from: classes-dex2jar.jar:b/h/e/c.class */
public class C1524c {

    /* renamed from: b.h.e.c$a */
    /* loaded from: classes-dex2jar.jar:b/h/e/c$a.class */
    public static class C1525a {

        /* renamed from: a */
        int f6055a;

        /* renamed from: b */
        boolean f6056b;

        C1525a() {
        }
    }

    /* renamed from: b.h.e.c$b */
    /* loaded from: classes-dex2jar.jar:b/h/e/c$b.class */
    public static class C1526b {

        /* renamed from: a */
        public char f6057a;

        /* renamed from: b */
        public float[] f6058b;

        C1526b(char c, float[] fArr) {
            this.f6057a = c;
            this.f6058b = fArr;
        }

        C1526b(C1526b c1526b) {
            this.f6057a = c1526b.f6057a;
            float[] fArr = c1526b.f6058b;
            this.f6058b = C1524c.m29840c(fArr, 0, fArr.length);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x03c9, code lost:
            if (r28 == 'T') goto L86;
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x0438, code lost:
            if (r28 == 'S') goto L96;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static void m29832a(android.graphics.Path r11, float[] r12, char r13, char r14, float[] r15) {
            /*
                Method dump skipped, instructions count: 2184
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p020b.p041h.p042e.C1524c.C1526b.m29832a(android.graphics.Path, float[], char, char, float[]):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v28, types: [double] */
        /* JADX WARN: Type inference failed for: r0v31, types: [double] */
        /* JADX WARN: Type inference failed for: r0v44, types: [double] */
        /* JADX WARN: Type inference failed for: r0v51, types: [double] */
        /* JADX WARN: Type inference failed for: r0v54, types: [double] */
        /* JADX WARN: Type inference failed for: r0v57, types: [double] */
        /* JADX WARN: Type inference failed for: r0v60, types: [double] */
        /* renamed from: b */
        private static void m29831b(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
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
            char c = (d11 * sin2) - (d12 * cos2);
            int i = 0;
            char c2 = (sin2 * d13) + (cos2 * d14);
            char c3 = d8;
            char c4 = d6;
            char c5 = d5;
            while (i < ceil) {
                ?? r0 = c3 + d15;
                double sin3 = Math.sin(r0);
                double cos3 = Math.cos(r0);
                ?? r02 = (d + ((d3 * cos) * cos3)) - (d12 * sin3);
                ?? r03 = d2 + (d3 * sin * cos3) + (d14 * sin3);
                ?? r04 = (d11 * sin3) - (d12 * cos3);
                ?? r05 = (sin3 * d13) + (cos3 * d14);
                double d16 = r0 - c3;
                double tan = Math.tan(d16 / 2.0d);
                double sin4 = (Math.sin(d16) * (Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) (c5 + (c * sin4)), (float) (c4 + (c2 * sin4)), (float) (r02 - (sin4 * r04)), (float) (r03 - (sin4 * r05)), (float) r02, (float) r03);
                i++;
                c5 = r02;
                c3 = r0;
                c2 = r05;
                c = r04;
                c4 = r03;
            }
        }

        /* JADX WARN: Type inference failed for: r0v73, types: [double] */
        /* JADX WARN: Type inference failed for: r0v86, types: [double] */
        /* JADX WARN: Type inference failed for: r0v88, types: [double] */
        /* JADX WARN: Type inference failed for: r0v92, types: [double] */
        /* JADX WARN: Type inference failed for: r0v94, types: [double] */
        /* JADX WARN: Type inference failed for: r0v96, types: [double] */
        /* JADX WARN: Type inference failed for: r0v98, types: [double] */
        /* renamed from: c */
        private static void m29830c(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            char c;
            char c2;
            double radians = Math.toRadians(f7);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d = f;
            double d2 = f2;
            double d3 = f5;
            double d4 = ((d * cos) + (d2 * sin)) / d3;
            double d5 = f6;
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
            if (d15 < 0.0d) {
                Log.w("PathParser", "Points are too far apart " + d14);
                float sqrt = (float) (Math.sqrt(d14) / 1.99999d);
                m29830c(path, f, f2, f3, f4, f5 * sqrt, f6 * sqrt, f7, z, z2);
                return;
            }
            double sqrt2 = Math.sqrt(d15);
            double d16 = d10 * sqrt2;
            double d17 = sqrt2 * d11;
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
            m29831b(path, (d18 * cos) - (d19 * sin), (d18 * sin) + (d19 * cos), d3, d5, d, d2, radians, atan2, c3);
        }

        /* renamed from: e */
        public static void m29828e(C1526b[] c1526bArr, Path path) {
            float[] fArr = new float[6];
            char c = 'm';
            int i = 0;
            while (true) {
                char c2 = c;
                if (i < c1526bArr.length) {
                    m29832a(path, fArr, c2, c1526bArr[i].f6057a, c1526bArr[i].f6058b);
                    c = c1526bArr[i].f6057a;
                    i++;
                } else {
                    return;
                }
            }
        }

        /* renamed from: d */
        public void m29829d(C1526b c1526b, C1526b c1526b2, float f) {
            this.f6057a = c1526b.f6057a;
            int i = 0;
            while (true) {
                float[] fArr = c1526b.f6058b;
                if (i < fArr.length) {
                    this.f6058b[i] = (fArr[i] * (1.0f - f)) + (c1526b2.f6058b[i] * f);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    private static void m29842a(ArrayList<C1526b> arrayList, char c, float[] fArr) {
        arrayList.add(new C1526b(c, fArr));
    }

    /* renamed from: b */
    public static boolean m29841b(C1526b[] c1526bArr, C1526b[] c1526bArr2) {
        if (c1526bArr == null || c1526bArr2 == null || c1526bArr.length != c1526bArr2.length) {
            return false;
        }
        for (int i = 0; i < c1526bArr.length; i++) {
            if (c1526bArr[i].f6057a != c1526bArr2[i].f6057a || c1526bArr[i].f6058b.length != c1526bArr2[i].f6058b.length) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    static float[] m29840c(float[] fArr, int i, int i2) {
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

    /* renamed from: d */
    public static C1526b[] m29839d(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int m29834i = m29834i(str, i);
            String trim = str.substring(i2, m29834i).trim();
            if (trim.length() > 0) {
                m29842a(arrayList, trim.charAt(0), m29835h(trim));
            }
            i2 = m29834i;
            i = m29834i + 1;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            m29842a(arrayList, str.charAt(i2), new float[0]);
        }
        return (C1526b[]) arrayList.toArray(new C1526b[arrayList.size()]);
    }

    /* renamed from: e */
    public static Path m29838e(String str) {
        Path path = new Path();
        C1526b[] m29839d = m29839d(str);
        if (m29839d != null) {
            try {
                C1526b.m29828e(m29839d, path);
                return path;
            } catch (RuntimeException e) {
                throw new RuntimeException("Error in parsing " + str, e);
            }
        }
        return null;
    }

    /* renamed from: f */
    public static C1526b[] m29837f(C1526b[] c1526bArr) {
        if (c1526bArr == null) {
            return null;
        }
        C1526b[] c1526bArr2 = new C1526b[c1526bArr.length];
        for (int i = 0; i < c1526bArr.length; i++) {
            c1526bArr2[i] = new C1526b(c1526bArr[i]);
        }
        return c1526bArr2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0095 A[LOOP:0: B:3:0x0010->B:27:0x0095, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009b A[SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m29836g(java.lang.String r3, int r4, p020b.p041h.p042e.C1524c.C1525a r5) {
        /*
            r0 = r5
            r1 = 0
            r0.f6056b = r1
            r0 = r4
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
        L10:
            r0 = r6
            r1 = r3
            int r1 = r1.length()
            if (r0 >= r1) goto L9b
            r0 = r3
            r1 = r6
            char r0 = r0.charAt(r1)
            r10 = r0
            r0 = r10
            r1 = 32
            if (r0 == r1) goto L87
            r0 = r10
            r1 = 69
            if (r0 == r1) goto L81
            r0 = r10
            r1 = 101(0x65, float:1.42E-43)
            if (r0 == r1) goto L81
            r0 = r10
            switch(r0) {
                case 44: goto L87;
                case 45: goto L69;
                case 46: goto L53;
                default: goto L50;
            }
        L50:
            goto L7b
        L53:
            r0 = r8
            if (r0 != 0) goto L61
            r0 = 0
            r7 = r0
            r0 = 1
            r8 = r0
            goto L8d
        L61:
            r0 = r5
            r1 = 1
            r0.f6056b = r1
            goto L87
        L69:
            r0 = r6
            r1 = r4
            if (r0 == r1) goto L7b
            r0 = r7
            if (r0 != 0) goto L7b
            r0 = r5
            r1 = 1
            r0.f6056b = r1
            goto L87
        L7b:
            r0 = 0
            r7 = r0
            goto L8d
        L81:
            r0 = 1
            r7 = r0
            goto L8d
        L87:
            r0 = 0
            r7 = r0
            r0 = 1
            r9 = r0
        L8d:
            r0 = r9
            if (r0 == 0) goto L95
            goto L9b
        L95:
            int r6 = r6 + 1
            goto L10
        L9b:
            r0 = r5
            r1 = r6
            r0.f6055a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p020b.p041h.p042e.C1524c.m29836g(java.lang.String, int, b.h.e.c$a):void");
    }

    /* renamed from: h */
    private static float[] m29835h(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            C1525a c1525a = new C1525a();
            int length = str.length();
            int i = 1;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= length) {
                    return m29840c(fArr, 0, i3);
                }
                m29836g(str, i, c1525a);
                int i4 = c1525a.f6055a;
                int i5 = i3;
                if (i < i4) {
                    fArr[i3] = Float.parseFloat(str.substring(i, i4));
                    i5 = i3 + 1;
                }
                if (c1525a.f6056b) {
                    i = i4;
                    i2 = i5;
                } else {
                    i = i4 + 1;
                    i2 = i5;
                }
            }
        } catch (NumberFormatException e) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e);
        }
    }

    /* renamed from: i */
    private static int m29834i(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                return i;
            }
            i++;
        }
        return i;
    }

    /* renamed from: j */
    public static void m29833j(C1526b[] c1526bArr, C1526b[] c1526bArr2) {
        for (int i = 0; i < c1526bArr2.length; i++) {
            c1526bArr[i].f6057a = c1526bArr2[i].f6057a;
            for (int i2 = 0; i2 < c1526bArr2[i].f6058b.length; i2++) {
                c1526bArr[i].f6058b[i2] = c1526bArr2[i].f6058b[i2];
            }
        }
    }
}
