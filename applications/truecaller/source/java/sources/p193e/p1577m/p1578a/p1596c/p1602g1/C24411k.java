package p193e.p1577m.p1578a.p1596c.p1602g1;

import p193e.p1577m.p1578a.p1596c.p1636q1.C24787m;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.k */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/k.class */
public final class C24411k {

    /* renamed from: e.m.a.c.g1.k$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/k$a.class */
    public static final class C24412a {

        /* renamed from: a */
        public long f68095a;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    public static boolean m5155a(C24798t c24798t, C24787m c24787m, boolean z, C24412a c24412a) {
        try {
            char m4523w = c24798t.m4523w();
            if (!z) {
                m4523w *= c24787m.f69464b;
            }
            c24412a.f68095a = m4523w;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0107, code lost:
        if (r0 == r7.f69468f) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x011e, code lost:
        if ((r6.m4529q() * 1000) == r0) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0144, code lost:
        if (r8 == r0) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0152  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m5154b(p193e.p1577m.p1578a.p1596c.p1636q1.C24798t r6, p193e.p1577m.p1578a.p1596c.p1636q1.C24787m r7, int r8, p193e.p1577m.p1578a.p1596c.p1602g1.C24411k.C24412a r9) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.C24411k.m5154b(e.m.a.c.q1.t, e.m.a.c.q1.m, int, e.m.a.c.g1.k$a):boolean");
    }

    /* renamed from: c */
    public static int m5153c(C24798t c24798t, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return c24798t.m4529q() + 1;
            case 7:
                return c24798t.m4524v() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }
}
