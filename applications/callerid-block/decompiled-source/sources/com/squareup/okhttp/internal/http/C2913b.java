package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.C2943k;
import com.squareup.okhttp.C2954p;
import com.squareup.okhttp.C2959r;
import java.util.Date;
/* renamed from: com.squareup.okhttp.internal.http.b */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/b.class */
public final class C2913b {

    /* renamed from: a */
    public final C2954p f12302a;

    /* renamed from: b */
    public final C2959r f12303b;

    /* renamed from: com.squareup.okhttp.internal.http.b$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/b$b.class */
    public static class C2915b {

        /* renamed from: a */
        final long f12304a;

        /* renamed from: b */
        final C2954p f12305b;

        /* renamed from: c */
        final C2959r f12306c;

        /* renamed from: d */
        private Date f12307d;

        /* renamed from: e */
        private String f12308e;

        /* renamed from: f */
        private Date f12309f;

        /* renamed from: g */
        private String f12310g;

        /* renamed from: h */
        private Date f12311h;

        /* renamed from: i */
        private long f12312i;

        /* renamed from: j */
        private long f12313j;

        /* renamed from: k */
        private String f12314k;

        /* renamed from: l */
        private int f12315l;

        public C2915b(long j, C2954p pVar, C2959r rVar) {
            this.f12315l = -1;
            this.f12304a = j;
            this.f12305b = pVar;
            this.f12306c = rVar;
            if (rVar != null) {
                C2943k r = rVar.m745r();
                int f = r.m897f();
                for (int i = 0; i < f; i++) {
                    String d = r.m899d(i);
                    String g = r.m896g(i);
                    if ("Date".equalsIgnoreCase(d)) {
                        this.f12307d = C2926f.m994c(g);
                        this.f12308e = g;
                    } else if ("Expires".equalsIgnoreCase(d)) {
                        this.f12311h = C2926f.m994c(g);
                    } else if ("Last-Modified".equalsIgnoreCase(d)) {
                        this.f12309f = C2926f.m994c(g);
                        this.f12310g = g;
                    } else if ("ETag".equalsIgnoreCase(d)) {
                        this.f12314k = g;
                    } else if ("Age".equalsIgnoreCase(d)) {
                        this.f12315l = C2917d.m1029a(g, -1);
                    } else if (C2934j.f12382c.equalsIgnoreCase(d)) {
                        this.f12312i = Long.parseLong(g);
                    } else if (C2934j.f12383d.equalsIgnoreCase(d)) {
                        this.f12313j = Long.parseLong(g);
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private long m1039a() {
            /*
                r7 = this;
                r0 = r7
                java.util.Date r0 = r0.f12307d
                r8 = r0
                r0 = 0
                r9 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0019
                r0 = 0
                r1 = r7
                long r1 = r1.f12313j
                r2 = r8
                long r2 = r2.getTime()
                long r1 = r1 - r2
                long r0 = java.lang.Math.max(r0, r1)
                r9 = r0
            L_0x0019:
                r0 = r7
                int r0 = r0.f12315l
                r11 = r0
                r0 = r9
                r12 = r0
                r0 = r11
                r1 = -1
                if (r0 == r1) goto L_0x0037
                r0 = r9
                java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS
                r2 = r11
                long r2 = (long) r2
                long r1 = r1.toMillis(r2)
                long r0 = java.lang.Math.max(r0, r1)
                r12 = r0
            L_0x0037:
                r0 = r7
                long r0 = r0.f12313j
                r9 = r0
                r0 = r12
                r1 = r9
                r2 = r7
                long r2 = r2.f12312i
                long r1 = r1 - r2
                long r0 = r0 + r1
                r1 = r7
                long r1 = r1.f12304a
                r2 = r9
                long r1 = r1 - r2
                long r0 = r0 + r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.http.C2913b.C2915b.m1039a():long");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        /* JADX WARN: Type inference failed for: r7v0 */
        /* JADX WARN: Type inference failed for: r7v1, types: [long] */
        /* JADX WARN: Type inference failed for: r7v2 */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v12 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Unknown variable types count: 3 */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private long m1038b() {
            /*
                r5 = this;
                r0 = r5
                com.squareup.okhttp.r r0 = r0.f12306c
                com.squareup.okhttp.d r0 = r0.m751l()
                r6 = r0
                r0 = r6
                int r0 = r0.m1312d()
                r1 = -1
                if (r0 == r1) goto L_0x001c
                java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
                r1 = r6
                int r1 = r1.m1312d()
                long r1 = (long) r1
                long r0 = r0.toMillis(r1)
                return r0
            L_0x001c:
                r0 = r5
                java.util.Date r0 = r0.f12311h
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 == 0) goto L_0x0057
                r0 = r5
                java.util.Date r0 = r0.f12307d
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L_0x0039
                r0 = r6
                long r0 = r0.getTime()
                r9 = r0
                goto L_0x003f
            L_0x0039:
                r0 = r5
                long r0 = r0.f12313j
                r9 = r0
            L_0x003f:
                r0 = r5
                java.util.Date r0 = r0.f12311h
                long r0 = r0.getTime()
                r1 = r9
                long r0 = r0 - r1
                r9 = r0
                r0 = r9
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0055
                r0 = r9
                r7 = r0
            L_0x0055:
                r0 = r7
                return r0
            L_0x0057:
                r0 = r7
                r9 = r0
                r0 = r5
                java.util.Date r0 = r0.f12309f
                if (r0 == 0) goto L_0x00aa
                r0 = r7
                r9 = r0
                r0 = r5
                com.squareup.okhttp.r r0 = r0.f12306c
                com.squareup.okhttp.p r0 = r0.m740w()
                com.squareup.okhttp.l r0 = r0.m785j()
                java.lang.String r0 = r0.m886A()
                if (r0 != 0) goto L_0x00aa
                r0 = r5
                java.util.Date r0 = r0.f12307d
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L_0x0086
                r0 = r6
                long r0 = r0.getTime()
                r9 = r0
                goto L_0x008c
            L_0x0086:
                r0 = r5
                long r0 = r0.f12312i
                r9 = r0
            L_0x008c:
                r0 = r9
                r1 = r5
                java.util.Date r1 = r1.f12309f
                long r1 = r1.getTime()
                long r0 = r0 - r1
                r11 = r0
                r0 = r7
                r9 = r0
                r0 = r11
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x00aa
                r0 = r11
                r1 = 10
                long r0 = r0 / r1
                r9 = r0
            L_0x00aa:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.http.C2913b.C2915b.m1038b():long");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0193  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x01a4  */
        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1, types: [long] */
        /* JADX WARN: Type inference failed for: r19v2 */
        /* JADX WARN: Type inference failed for: r19v4 */
        /* JADX WARN: Unknown variable types count: 3 */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private com.squareup.okhttp.internal.http.C2913b m1036d() {
            /*
                Method dump skipped, instructions count: 447
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.http.C2913b.C2915b.m1036d():com.squareup.okhttp.internal.http.b");
        }

        /* renamed from: e */
        private static boolean m1035e(C2954p pVar) {
            return (pVar.m787h("If-Modified-Since") == null && pVar.m787h("If-None-Match") == null) ? false : true;
        }

        /* renamed from: f */
        private boolean m1034f() {
            return this.f12306c.m751l().m1312d() == -1 && this.f12311h == null;
        }

        /* renamed from: c */
        public C2913b m1037c() {
            C2913b d = m1036d();
            C2913b bVar = d;
            if (d.f12302a != null) {
                bVar = d;
                if (this.f12305b.m788g().m1306j()) {
                    bVar = new C2913b(null, null);
                }
            }
            return bVar;
        }
    }

    private C2913b(C2954p pVar, C2959r rVar) {
        this.f12302a = pVar;
        this.f12303b = rVar;
    }

    /* renamed from: a */
    public static boolean m1040a(C2959r rVar, C2954p pVar) {
        int n = rVar.m749n();
        if (!(n == 200 || n == 410 || n == 414 || n == 501 || n == 203 || n == 204)) {
            if (n != 307) {
                if (!(n == 308 || n == 404 || n == 405)) {
                    switch (n) {
                        case 300:
                        case 301:
                            break;
                        case 302:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (rVar.m747p("Expires") == null && rVar.m751l().m1312d() == -1 && !rVar.m751l().m1313c() && !rVar.m751l().m1314b()) {
                return false;
            }
        }
        boolean z = false;
        if (!rVar.m751l().m1307i()) {
            z = false;
            if (!pVar.m788g().m1307i()) {
                z = true;
            }
        }
        return z;
    }
}
