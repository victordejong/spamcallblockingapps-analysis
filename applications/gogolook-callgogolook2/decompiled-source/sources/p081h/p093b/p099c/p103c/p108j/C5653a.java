package p081h.p093b.p099c.p103c.p108j;
/* renamed from: h.b.c.c.j.a */
/* loaded from: classes-dex2jar.jar:h/b/c/c/j/a.class */
public class C5653a {
    /* renamed from: a */
    public static int m24878a(C5659c cVar, int i, int i2, boolean z) {
        int i3;
        if (z) {
            i += i2 - 1;
            i3 = -1;
        } else {
            i3 = 1;
        }
        int i4 = 0;
        while (i2 > 0) {
            i4 = (cVar.m24866c(i) & 255) | (i4 << 8);
            i += i3;
            i2--;
        }
        return i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x011b, code lost:
        android.util.Log.e("CameraExif", "Invalid length");
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0124, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0125, code lost:
        r0.m24868a(r10 - 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0133, code lost:
        r9 = 0;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m24876a(java.io.InputStream r6, long r7) {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p093b.p099c.p103c.p108j.C5653a.m24876a(java.io.InputStream, long):int");
    }

    /* renamed from: a */
    public static boolean m24877a(C5659c cVar, long j, int i) {
        if (j < 0) {
            return cVar.m24865d(i);
        }
        return ((long) i) < j;
    }
}
