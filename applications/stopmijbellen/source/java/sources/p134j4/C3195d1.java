package p134j4;

import p156l4.C3496b;
import p201p6.C4018c;
/* renamed from: j4.d1 */
/* loaded from: classes-dex2jar.jar:j4/d1.class */
public final class C3195d1 {

    /* renamed from: e */
    public static final C4018c f10759e = new C4018c("ExtractorTaskFinder");

    /* renamed from: a */
    public final C3187b1 f10760a;

    /* renamed from: b */
    public final C3259w f10761b;

    /* renamed from: c */
    public final C3194d0 f10762c;

    /* renamed from: d */
    public final C3496b f10763d;

    public C3195d1(C3187b1 c3187b1, C3259w c3259w, C3194d0 c3194d0, C3496b c3496b) {
        this.f10760a = c3187b1;
        this.f10761b = c3259w;
        this.f10762c = c3194d0;
        this.f10763d = c3496b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:194:0x03c9, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0128, code lost:
        if (r19 == null) goto L33;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p134j4.C3191c1 m2558a() {
        /*
            Method dump skipped, instructions count: 1759
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p134j4.C3195d1.m2558a():j4.c1");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0077, code lost:
        if (java.lang.Integer.parseInt(r0.getProperty("fileStatus")) == 4) goto L17;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2557b(p134j4.C3266y0 r8, p134j4.C3269z0 r9) {
        /*
            r7 = this;
            j4.z1 r0 = new j4.z1
            r10 = r0
            r0 = r7
            j4.w r0 = r0.f10761b
            r10 = r0
            r0 = r8
            j4.x0 r0 = r0.f11065c
            r11 = r0
            r0 = r10
            r1 = r11
            java.lang.String r1 = r1.f11051a
            r2 = r8
            int r2 = r2.f11064b
            r3 = r11
            long r3 = r3.f11052b
            r4 = r9
            java.lang.String r4 = r4.f11068a
            java.io.File r0 = r0.m2486q(r1, r2, r3, r4)
            r9 = r0
            r0 = r9
            boolean r0 = r0.exists()
            r12 = r0
            r0 = 1
            r13 = r0
            r0 = r12
            if (r0 != 0) goto L37
            goto L97
        L37:
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.io.IOException -> L84
            r8 = r0
            r0 = r8
            r1 = r9
            r0.<init>(r1)     // Catch: java.io.IOException -> L84
            java.util.Properties r0 = new java.util.Properties     // Catch: java.lang.Throwable -> L7d java.io.IOException -> L84
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: java.lang.Throwable -> L7d
            r0 = r9
            r1 = r8
            r0.load(r1)     // Catch: java.lang.Throwable -> L7d
            r0 = r8
            r0.close()     // Catch: java.io.IOException -> L84
            r0 = r9
            java.lang.String r1 = "fileStatus"
            java.lang.String r0 = r0.getProperty(r1)
            if (r0 != 0) goto L6c
            p6.c r0 = p134j4.C3270z1.f11074h
            java.lang.String r1 = "Slice checkpoint file corrupt while checking if extraction finished."
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            int r0 = r0.m1509c(r1, r2)
            goto L97
        L6c:
            r0 = r9
            java.lang.String r1 = "fileStatus"
            java.lang.String r0 = r0.getProperty(r1)
            int r0 = java.lang.Integer.parseInt(r0)
            r1 = 4
            if (r0 != r1) goto L97
            goto L9a
        L7d:
            r9 = move-exception
            r0 = r8
            r0.close()     // Catch: java.lang.Throwable -> L9d
        L82:
            r0 = r9
            throw r0     // Catch: java.io.IOException -> L84
        L84:
            r8 = move-exception
            p6.c r0 = p134j4.C3270z1.f11074h
            java.lang.String r1 = "Could not read checkpoint while checking if extraction finished. %s"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            r5 = r8
            r3[r4] = r5
            int r0 = r0.m1509c(r1, r2)
        L97:
            r0 = 0
            r13 = r0
        L9a:
            r0 = r13
            return r0
        L9d:
            r8 = move-exception
            goto L82
        */
        throw new UnsupportedOperationException("Method not decompiled: p134j4.C3195d1.m2557b(j4.y0, j4.z0):boolean");
    }
}
