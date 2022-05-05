package androidx.core.graphics;

import android.graphics.Path;
import androidx.annotation.Nullable;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/PathParser.class */
public class PathParser {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/PathParser$ExtractFloatResult.class */
    public static class ExtractFloatResult {

        /* renamed from: a */
        int f3020a;

        /* renamed from: b */
        boolean f3021b;

        ExtractFloatResult() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/PathParser$PathDataNode.class */
    public static class PathDataNode {

        /* renamed from: a */
        public char f3022a;

        /* renamed from: b */
        public float[] f3023b;

        PathDataNode(char c, float[] fArr) {
            this.f3022a = c;
            this.f3023b = fArr;
        }

        PathDataNode(PathDataNode pathDataNode) {
            this.f3022a = pathDataNode.f3022a;
            float[] fArr = pathDataNode.f3023b;
            this.f3023b = PathParser.m19578c(fArr, 0, fArr.length);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x03d1, code lost:
            if (r28 == 'T') goto L_0x03d4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x0440, code lost:
            if (r28 == 'S') goto L_0x0443;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static void m19570a(android.graphics.Path r11, float[] r12, char r13, char r14, float[] r15) {
            /*
                Method dump skipped, instructions count: 2192
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.PathDataNode.m19570a(android.graphics.Path, float[], char, char, float[]):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v42, types: [double] */
        /* JADX WARN: Type inference failed for: r0v49, types: [double] */
        /* JADX WARN: Type inference failed for: r0v52, types: [double] */
        /* JADX WARN: Type inference failed for: r0v55, types: [double] */
        /* JADX WARN: Type inference failed for: r0v58, types: [double] */
        /* JADX WARN: Type inference failed for: r20v0, types: [double] */
        /* JADX WARN: Type inference failed for: r22v0, types: [double] */
        /* JADX WARN: Type inference failed for: r22v2, types: [double] */
        /* JADX WARN: Type inference failed for: r22v3 */
        /* JADX WARN: Type inference failed for: r22v4 */
        /* JADX WARN: Type inference failed for: r24v3, types: [double] */
        /* JADX WARN: Type inference failed for: r24v4 */
        /* JADX WARN: Type inference failed for: r24v5 */
        /* JADX WARN: Type inference failed for: r26v0, types: [double] */
        /* JADX WARN: Unknown variable types count: 7 */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static void m19569b(android.graphics.Path r11, double r12, double r14, double r16, double r18, double r20, double r22, double r24, double r26, double r28) {
            /*
                Method dump skipped, instructions count: 362
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.PathDataNode.m19569b(android.graphics.Path, double, double, double, double, double, double, double, double, double):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v73, types: [double] */
        /* JADX WARN: Type inference failed for: r42v1 */
        /* JADX WARN: Type inference failed for: r42v2, types: [double] */
        /* JADX WARN: Type inference failed for: r42v5 */
        /* JADX WARN: Type inference failed for: r42v6 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static void m19568c(android.graphics.Path r20, float r21, float r22, float r23, float r24, float r25, float r26, float r27, boolean r28, boolean r29) {
            /*
                Method dump skipped, instructions count: 477
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.PathDataNode.m19568c(android.graphics.Path, float, float, float, float, float, float, float, boolean, boolean):void");
        }

        /* renamed from: e */
        public static void m19566e(PathDataNode[] pathDataNodeArr, Path path) {
            float[] fArr = new float[6];
            char c = 'm';
            for (int i = 0; i < pathDataNodeArr.length; i++) {
                m19570a(path, fArr, c, pathDataNodeArr[i].f3022a, pathDataNodeArr[i].f3023b);
                c = pathDataNodeArr[i].f3022a;
            }
        }

        /* renamed from: d */
        public void m19567d(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f) {
            this.f3022a = pathDataNode.f3022a;
            int i = 0;
            while (true) {
                float[] fArr = pathDataNode.f3023b;
                if (i < fArr.length) {
                    this.f3023b[i] = (fArr[i] * (1.0f - f)) + (pathDataNode2.f3023b[i] * f);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    private PathParser() {
    }

    /* renamed from: a */
    private static void m19580a(ArrayList<PathDataNode> arrayList, char c, float[] fArr) {
        arrayList.add(new PathDataNode(c, fArr));
    }

    /* renamed from: b */
    public static boolean m19579b(@Nullable PathDataNode[] pathDataNodeArr, @Nullable PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            if (!(pathDataNodeArr[i].f3022a == pathDataNodeArr2[i].f3022a && pathDataNodeArr[i].f3023b.length == pathDataNodeArr2[i].f3023b.length)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    static float[] m19578c(float[] fArr, int i, int i2) {
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
    public static PathDataNode[] m19577d(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int i3 = m19572i(str, i);
            String trim = str.substring(i2, i3).trim();
            if (trim.length() > 0) {
                m19580a(arrayList, trim.charAt(0), m19573h(trim));
            }
            i2 = i3;
            i = i3 + 1;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            m19580a(arrayList, str.charAt(i2), new float[0]);
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[arrayList.size()]);
    }

    /* renamed from: e */
    public static Path m19576e(String str) {
        Path path = new Path();
        PathDataNode[] d = m19577d(str);
        if (d == null) {
            return null;
        }
        try {
            PathDataNode.m19566e(d, path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException("Error in parsing " + str, e);
        }
    }

    /* renamed from: f */
    public static PathDataNode[] m19575f(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            pathDataNodeArr2[i] = new PathDataNode(pathDataNodeArr[i]);
        }
        return pathDataNodeArr2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0095 A[LOOP:0: B:3:0x0010->B:27:0x0095, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009b A[SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m19574g(java.lang.String r3, int r4, androidx.core.graphics.PathParser.ExtractFloatResult r5) {
        /*
            r0 = r5
            r1 = 0
            r0.f3021b = r1
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
            r0.f3021b = r1
            goto L_0x0087
        L_0x0069:
            r0 = r6
            r1 = r4
            if (r0 == r1) goto L_0x007b
            r0 = r7
            if (r0 != 0) goto L_0x007b
            r0 = r5
            r1 = 1
            r0.f3021b = r1
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
            r0.f3020a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.m19574g(java.lang.String, int, androidx.core.graphics.PathParser$ExtractFloatResult):void");
    }

    /* renamed from: h */
    private static float[] m19573h(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult();
            int length = str.length();
            int i = 1;
            int i2 = 0;
            while (i < length) {
                m19574g(str, i, extractFloatResult);
                int i3 = extractFloatResult.f3020a;
                int i4 = i2;
                if (i < i3) {
                    fArr[i2] = Float.parseFloat(str.substring(i, i3));
                    i4 = i2 + 1;
                }
                if (extractFloatResult.f3021b) {
                    i = i3;
                    i2 = i4;
                } else {
                    i = i3 + 1;
                    i2 = i4;
                }
            }
            return m19578c(fArr, 0, i2);
        } catch (NumberFormatException e) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e);
        }
    }

    /* renamed from: i */
    private static int m19572i(String str, int i) {
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
    public static void m19571j(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        for (int i = 0; i < pathDataNodeArr2.length; i++) {
            pathDataNodeArr[i].f3022a = pathDataNodeArr2[i].f3022a;
            for (int i2 = 0; i2 < pathDataNodeArr2[i].f3023b.length; i2++) {
                pathDataNodeArr[i].f3023b[i2] = pathDataNodeArr2[i].f3023b[i2];
            }
        }
    }
}
