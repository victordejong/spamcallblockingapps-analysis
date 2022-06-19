package androidx.core.graphics;

import android.graphics.Path;
import android.util.Log;
import com.google.android.flexbox.FlexItem;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
/* renamed from: androidx.core.graphics.b */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/b.class */
public class C0570b {

    /* renamed from: androidx.core.graphics.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/b$a.class */
    public static class C0571a {

        /* renamed from: a */
        int f1917a;

        /* renamed from: b */
        boolean f1918b;

        C0571a() {
        }
    }

    /* renamed from: androidx.core.graphics.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/b$b.class */
    public static class C0572b {

        /* renamed from: a */
        public char f1919a;

        /* renamed from: b */
        public float[] f1920b;

        C0572b(char c, float[] fArr) {
            this.f1919a = c;
            this.f1920b = fArr;
        }

        C0572b(C0572b c0572b) {
            this.f1919a = c0572b.f1919a;
            float[] fArr = c0572b.f1920b;
            this.f1920b = C0570b.m6165a(fArr, 0, fArr.length);
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
        private static void m6159a(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
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
            char c2 = (d11 * sin2) - (d12 * cos2);
            int i = 0;
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
                path.rLineTo(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT);
                path.cubicTo((float) (c5 + (c2 * sin4)), (float) (c4 + (c * sin4)), (float) (r02 - (sin4 * r04)), (float) (r03 - (sin4 * r05)), (float) r02, (float) r03);
                i++;
                c4 = r03;
                c3 = r0;
                c = r05;
                c2 = r04;
                c5 = r02;
            }
        }

        /* JADX WARN: Type inference failed for: r0v73, types: [double] */
        /* JADX WARN: Type inference failed for: r0v86, types: [double] */
        /* JADX WARN: Type inference failed for: r0v88, types: [double] */
        /* JADX WARN: Type inference failed for: r0v92, types: [double] */
        /* JADX WARN: Type inference failed for: r0v94, types: [double] */
        /* JADX WARN: Type inference failed for: r0v96, types: [double] */
        /* JADX WARN: Type inference failed for: r0v98, types: [double] */
        /* renamed from: a */
        private static void m6158a(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
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
            if (d14 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d15 = (1.0d / d14) - 0.25d;
            if (d15 < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                Log.w("PathParser", "Points are too far apart " + d14);
                float sqrt = (float) (Math.sqrt(d14) / 1.99999d);
                m6158a(path, f, f2, f3, f4, f5 * sqrt, f6 * sqrt, f7, z, z2);
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
            int i = (atan22 > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 1 : (atan22 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 0 : -1));
            char c3 = atan22;
            if (z2 != (i >= 0)) {
                c3 = i > 0 ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
            }
            double d18 = c * d3;
            double d19 = c2 * d5;
            m6159a(path, (d18 * cos) - (d19 * sin), (d18 * sin) + (d19 * cos), d3, d5, d, d2, radians, atan2, c3);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x03b9, code lost:
            if (r28 == 'T') goto L87;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x0428, code lost:
            if (r28 == 'S') goto L97;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static void m6157a(android.graphics.Path r11, float[] r12, char r13, char r14, float[] r15) {
            /*
                Method dump skipped, instructions count: 2168
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.C0570b.C0572b.m6157a(android.graphics.Path, float[], char, char, float[]):void");
        }

        /* renamed from: a */
        public static void m6155a(C0572b[] c0572bArr, Path path) {
            float[] fArr = new float[6];
            char c = 'm';
            int i = 0;
            while (true) {
                char c2 = c;
                if (i < c0572bArr.length) {
                    m6157a(path, fArr, c2, c0572bArr[i].f1919a, c0572bArr[i].f1920b);
                    c = c0572bArr[i].f1919a;
                    i++;
                } else {
                    return;
                }
            }
        }

        /* renamed from: a */
        public void m6156a(C0572b c0572b, C0572b c0572b2, float f) {
            this.f1919a = c0572b.f1919a;
            int i = 0;
            while (true) {
                float[] fArr = c0572b.f1920b;
                if (i < fArr.length) {
                    this.f1920b[i] = (fArr[i] * (1.0f - f)) + (c0572b2.f1920b[i] * f);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    private static int m6168a(String str, int i) {
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
    public static Path m6169a(String str) {
        Path path = new Path();
        C0572b[] m6162b = m6162b(str);
        if (m6162b != null) {
            try {
                C0572b.m6155a(m6162b, path);
                return path;
            } catch (RuntimeException e) {
                throw new RuntimeException("Error in parsing " + str, e);
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a1 A[LOOP:0: B:3:0x001a->B:27:0x00a1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a7 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m6167a(java.lang.String r3, int r4, androidx.core.graphics.C0570b.C0571a r5) {
        /*
            r0 = r5
            r1 = 0
            r0.f1918b = r1
            r0 = r4
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            r10 = r0
            r0 = r7
            r8 = r0
        L1a:
            r0 = r6
            r1 = r3
            int r1 = r1.length()
            if (r0 >= r1) goto La7
            r0 = r3
            r1 = r6
            char r0 = r0.charAt(r1)
            r7 = r0
            r0 = r7
            r1 = 32
            if (r0 == r1) goto L93
            r0 = r7
            r1 = 69
            if (r0 == r1) goto L8d
            r0 = r7
            r1 = 101(0x65, float:1.42E-43)
            if (r0 == r1) goto L8d
            r0 = r7
            switch(r0) {
                case 44: goto L93;
                case 45: goto L75;
                case 46: goto L5f;
                default: goto L5c;
            }
        L5c:
            goto L87
        L5f:
            r0 = r10
            if (r0 != 0) goto L6d
            r0 = 0
            r8 = r0
            r0 = 1
            r10 = r0
            goto L99
        L6d:
            r0 = r5
            r1 = 1
            r0.f1918b = r1
            goto L93
        L75:
            r0 = r6
            r1 = r4
            if (r0 == r1) goto L87
            r0 = r8
            if (r0 != 0) goto L87
            r0 = r5
            r1 = 1
            r0.f1918b = r1
            goto L93
        L87:
            r0 = 0
            r8 = r0
            goto L99
        L8d:
            r0 = 1
            r8 = r0
            goto L99
        L93:
            r0 = 0
            r8 = r0
            r0 = 1
            r9 = r0
        L99:
            r0 = r9
            if (r0 == 0) goto La1
            goto La7
        La1:
            int r6 = r6 + 1
            goto L1a
        La7:
            r0 = r5
            r1 = r6
            r0.f1917a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.C0570b.m6167a(java.lang.String, int, androidx.core.graphics.b$a):void");
    }

    /* renamed from: a */
    private static void m6166a(ArrayList<C0572b> arrayList, char c, float[] fArr) {
        arrayList.add(new C0572b(c, fArr));
    }

    /* renamed from: a */
    public static boolean m6163a(C0572b[] c0572bArr, C0572b[] c0572bArr2) {
        if (c0572bArr == null || c0572bArr2 == null || c0572bArr.length != c0572bArr2.length) {
            return false;
        }
        for (int i = 0; i < c0572bArr.length; i++) {
            if (c0572bArr[i].f1919a != c0572bArr2[i].f1919a || c0572bArr[i].f1920b.length != c0572bArr2[i].f1920b.length) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    static float[] m6165a(float[] fArr, int i, int i2) {
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

    /* renamed from: a */
    public static C0572b[] m6164a(C0572b[] c0572bArr) {
        if (c0572bArr == null) {
            return null;
        }
        C0572b[] c0572bArr2 = new C0572b[c0572bArr.length];
        for (int i = 0; i < c0572bArr.length; i++) {
            c0572bArr2[i] = new C0572b(c0572bArr[i]);
        }
        return c0572bArr2;
    }

    /* renamed from: b */
    public static void m6161b(C0572b[] c0572bArr, C0572b[] c0572bArr2) {
        for (int i = 0; i < c0572bArr2.length; i++) {
            c0572bArr[i].f1919a = c0572bArr2[i].f1919a;
            for (int i2 = 0; i2 < c0572bArr2[i].f1920b.length; i2++) {
                c0572bArr[i].f1920b[i2] = c0572bArr2[i].f1920b[i2];
            }
        }
    }

    /* renamed from: b */
    public static C0572b[] m6162b(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int m6168a = m6168a(str, i);
            String trim = str.substring(i2, m6168a).trim();
            if (trim.length() > 0) {
                m6166a(arrayList, trim.charAt(0), m6160c(trim));
            }
            i2 = m6168a;
            i = m6168a + 1;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            m6166a(arrayList, str.charAt(i2), new float[0]);
        }
        return (C0572b[]) arrayList.toArray(new C0572b[arrayList.size()]);
    }

    /* renamed from: c */
    private static float[] m6160c(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            C0571a c0571a = new C0571a();
            int length = str.length();
            int i = 1;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= length) {
                    return m6165a(fArr, 0, i3);
                }
                m6167a(str, i, c0571a);
                int i4 = c0571a.f1917a;
                int i5 = i3;
                if (i < i4) {
                    fArr[i3] = Float.parseFloat(str.substring(i, i4));
                    i5 = i3 + 1;
                }
                if (c0571a.f1918b) {
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
}
