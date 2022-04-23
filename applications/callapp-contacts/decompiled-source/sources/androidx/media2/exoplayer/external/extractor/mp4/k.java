package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.extractor.h;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/k.class */
final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f3369a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153};

    private k() {
    }

    private static boolean a(int i) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        for (int i2 : f3369a) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(h hVar) throws IOException, InterruptedException {
        return a(hVar, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(androidx.media2.exoplayer.external.extractor.h r5, boolean r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.k.a(androidx.media2.exoplayer.external.extractor.h, boolean):boolean");
    }

    public static boolean b(h hVar) throws IOException, InterruptedException {
        return a(hVar, false);
    }
}
