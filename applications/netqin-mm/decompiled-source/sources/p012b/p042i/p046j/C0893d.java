package p012b.p042i.p046j;

import android.graphics.Path;
import java.util.ArrayList;
/* renamed from: b.i.j.d */
/* loaded from: classes-dex2jar.jar:b/i/j/d.class */
public class C0893d {

    /* renamed from: b.i.j.d$a */
    /* loaded from: classes-dex2jar.jar:b/i/j/d$a.class */
    public static class C0894a {

        /* renamed from: a */
        public int f4089a;

        /* renamed from: b */
        public boolean f4090b;
    }

    /* renamed from: b.i.j.d$b */
    /* loaded from: classes-dex2jar.jar:b/i/j/d$b.class */
    public static class C0895b {

        /* renamed from: a */
        public char f4091a;

        /* renamed from: b */
        public float[] f4092b;

        public C0895b(char c, float[] fArr) {
            this.f4091a = c;
            this.f4092b = fArr;
        }

        public C0895b(C0895b bVar) {
            this.f4091a = bVar.f4091a;
            float[] fArr = bVar.f4092b;
            this.f4092b = C0893d.m35594a(fArr, 0, fArr.length);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v46, types: [double] */
        /* JADX WARN: Type inference failed for: r0v53, types: [double] */
        /* JADX WARN: Type inference failed for: r0v56, types: [double] */
        /* JADX WARN: Type inference failed for: r0v59, types: [double] */
        /* JADX WARN: Type inference failed for: r0v62, types: [double] */
        /* JADX WARN: Type inference failed for: r20v0, types: [double] */
        /* JADX WARN: Type inference failed for: r22v0, types: [double] */
        /* JADX WARN: Type inference failed for: r26v0, types: [double] */
        /* JADX WARN: Type inference failed for: r26v2, types: [double] */
        /* JADX WARN: Type inference failed for: r26v3 */
        /* JADX WARN: Type inference failed for: r26v4 */
        /* JADX WARN: Type inference failed for: r28v2, types: [double] */
        /* JADX WARN: Type inference failed for: r28v3 */
        /* JADX WARN: Type inference failed for: r28v4 */
        /* JADX WARN: Unknown variable types count: 7 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void m35588a(android.graphics.Path r11, double r12, double r14, double r16, double r18, double r20, double r22, double r24, double r26, double r28) {
            /*
                Method dump skipped, instructions count: 372
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p042i.p046j.C0893d.C0895b.m35588a(android.graphics.Path, double, double, double, double, double, double, double, double, double):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v98, types: [double] */
        /* JADX WARN: Type inference failed for: r42v1 */
        /* JADX WARN: Type inference failed for: r42v2, types: [double] */
        /* JADX WARN: Type inference failed for: r42v5 */
        /* JADX WARN: Type inference failed for: r42v6 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void m35587a(android.graphics.Path r20, float r21, float r22, float r23, float r24, float r25, float r26, float r27, boolean r28, boolean r29) {
            /*
                Method dump skipped, instructions count: 563
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p042i.p046j.C0893d.C0895b.m35587a(android.graphics.Path, float, float, float, float, float, float, float, boolean, boolean):void");
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x03bd, code lost:
            if (r28 == 'T') goto L_0x03c0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x042c, code lost:
            if (r28 == 'S') goto L_0x042f;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void m35586a(android.graphics.Path r11, float[] r12, char r13, char r14, float[] r15) {
            /*
                Method dump skipped, instructions count: 2172
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p042i.p046j.C0893d.C0895b.m35586a(android.graphics.Path, float[], char, char, float[]):void");
        }

        /* renamed from: a */
        public static void m35584a(C0895b[] bVarArr, Path path) {
            float[] fArr = new float[6];
            char c = 'm';
            for (int i = 0; i < bVarArr.length; i++) {
                m35586a(path, fArr, c, bVarArr[i].f4091a, bVarArr[i].f4092b);
                c = bVarArr[i].f4091a;
            }
        }

        /* renamed from: a */
        public void m35585a(C0895b bVar, C0895b bVar2, float f) {
            this.f4091a = bVar.f4091a;
            int i = 0;
            while (true) {
                float[] fArr = bVar.f4092b;
                if (i < fArr.length) {
                    this.f4092b[i] = (fArr[i] * (1.0f - f)) + (bVar2.f4092b[i] * f);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public static int m35597a(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                return i;
            }
            i++;
        }
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0095 A[LOOP:0: B:3:0x0010->B:27:0x0095, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009b A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m35596a(java.lang.String r3, int r4, p012b.p042i.p046j.C0893d.C0894a r5) {
        /*
            r0 = r5
            r1 = 0
            r0.f4090b = r1
            r0 = r4
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x0010:
            r0 = r6
            r1 = r3
            int r1 = r1.length()
            if (r0 >= r1) goto L_0x009b
            r0 = r3
            r1 = r6
            char r0 = r0.charAt(r1)
            r10 = r0
            r0 = r10
            r1 = 32
            if (r0 == r1) goto L_0x0087
            r0 = r10
            r1 = 69
            if (r0 == r1) goto L_0x0081
            r0 = r10
            r1 = 101(0x65, float:1.42E-43)
            if (r0 == r1) goto L_0x0081
            r0 = r10
            switch(r0) {
                case 44: goto L_0x0087;
                case 45: goto L_0x0069;
                case 46: goto L_0x0053;
                default: goto L_0x0050;
            }
        L_0x0050:
            goto L_0x007b
        L_0x0053:
            r0 = r8
            if (r0 != 0) goto L_0x0061
            r0 = 0
            r7 = r0
            r0 = 1
            r8 = r0
            goto L_0x008d
        L_0x0061:
            r0 = r5
            r1 = 1
            r0.f4090b = r1
            goto L_0x0087
        L_0x0069:
            r0 = r6
            r1 = r4
            if (r0 == r1) goto L_0x007b
            r0 = r7
            if (r0 != 0) goto L_0x007b
            r0 = r5
            r1 = 1
            r0.f4090b = r1
            goto L_0x0087
        L_0x007b:
            r0 = 0
            r7 = r0
            goto L_0x008d
        L_0x0081:
            r0 = 1
            r7 = r0
            goto L_0x008d
        L_0x0087:
            r0 = 0
            r7 = r0
            r0 = 1
            r9 = r0
        L_0x008d:
            r0 = r9
            if (r0 == 0) goto L_0x0095
            goto L_0x009b
        L_0x0095:
            int r6 = r6 + 1
            goto L_0x0010
        L_0x009b:
            r0 = r5
            r1 = r6
            r0.f4089a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p042i.p046j.C0893d.m35596a(java.lang.String, int, b.i.j.d$a):void");
    }

    /* renamed from: a */
    public static void m35595a(ArrayList<C0895b> arrayList, char c, float[] fArr) {
        arrayList.add(new C0895b(c, fArr));
    }

    /* renamed from: a */
    public static boolean m35592a(C0895b[] bVarArr, C0895b[] bVarArr2) {
        if (bVarArr == null || bVarArr2 == null || bVarArr.length != bVarArr2.length) {
            return false;
        }
        for (int i = 0; i < bVarArr.length; i++) {
            if (!(bVarArr[i].f4091a == bVarArr2[i].f4091a && bVarArr[i].f4092b.length == bVarArr2[i].f4092b.length)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static float[] m35594a(float[] fArr, int i, int i2) {
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
    public static C0895b[] m35598a(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int a = m35597a(str, i);
            String trim = str.substring(i2, a).trim();
            if (trim.length() > 0) {
                m35595a(arrayList, trim.charAt(0), m35589c(trim));
            }
            i2 = a;
            i = a + 1;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            m35595a(arrayList, str.charAt(i2), new float[0]);
        }
        return (C0895b[]) arrayList.toArray(new C0895b[arrayList.size()]);
    }

    /* renamed from: a */
    public static C0895b[] m35593a(C0895b[] bVarArr) {
        if (bVarArr == null) {
            return null;
        }
        C0895b[] bVarArr2 = new C0895b[bVarArr.length];
        for (int i = 0; i < bVarArr.length; i++) {
            bVarArr2[i] = new C0895b(bVarArr[i]);
        }
        return bVarArr2;
    }

    /* renamed from: b */
    public static Path m35591b(String str) {
        Path path = new Path();
        C0895b[] a = m35598a(str);
        if (a == null) {
            return null;
        }
        try {
            C0895b.m35584a(a, path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException("Error in parsing " + str, e);
        }
    }

    /* renamed from: b */
    public static void m35590b(C0895b[] bVarArr, C0895b[] bVarArr2) {
        for (int i = 0; i < bVarArr2.length; i++) {
            bVarArr[i].f4091a = bVarArr2[i].f4091a;
            for (int i2 = 0; i2 < bVarArr2[i].f4092b.length; i2++) {
                bVarArr[i].f4092b[i2] = bVarArr2[i].f4092b[i2];
            }
        }
    }

    /* renamed from: c */
    public static float[] m35589c(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            C0894a aVar = new C0894a();
            int length = str.length();
            int i = 1;
            int i2 = 0;
            while (i < length) {
                m35596a(str, i, aVar);
                int i3 = aVar.f4089a;
                int i4 = i2;
                if (i < i3) {
                    fArr[i2] = Float.parseFloat(str.substring(i, i3));
                    i4 = i2 + 1;
                }
                if (aVar.f4090b) {
                    i = i3;
                    i2 = i4;
                } else {
                    i = i3 + 1;
                    i2 = i4;
                }
            }
            return m35594a(fArr, 0, i2);
        } catch (NumberFormatException e) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e);
        }
    }
}
