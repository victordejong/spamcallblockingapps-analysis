package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.C2855d;
import com.squareup.okhttp.C2943k;
import com.squareup.okhttp.C2954p;
import com.squareup.okhttp.C2959r;
import java.util.Date;
import java.util.concurrent.TimeUnit;
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

        public C2915b(long j, C2954p c2954p, C2959r c2959r) {
            this.f12315l = -1;
            this.f12304a = j;
            this.f12305b = c2954p;
            this.f12306c = c2959r;
            if (c2959r != null) {
                C2943k m745r = c2959r.m745r();
                int m897f = m745r.m897f();
                for (int i = 0; i < m897f; i++) {
                    String m899d = m745r.m899d(i);
                    String m896g = m745r.m896g(i);
                    if ("Date".equalsIgnoreCase(m899d)) {
                        this.f12307d = C2926f.m994c(m896g);
                        this.f12308e = m896g;
                    } else if ("Expires".equalsIgnoreCase(m899d)) {
                        this.f12311h = C2926f.m994c(m896g);
                    } else if ("Last-Modified".equalsIgnoreCase(m899d)) {
                        this.f12309f = C2926f.m994c(m896g);
                        this.f12310g = m896g;
                    } else if ("ETag".equalsIgnoreCase(m899d)) {
                        this.f12314k = m896g;
                    } else if ("Age".equalsIgnoreCase(m899d)) {
                        this.f12315l = C2917d.m1029a(m896g, -1);
                    } else if (C2934j.f12382c.equalsIgnoreCase(m899d)) {
                        this.f12312i = Long.parseLong(m896g);
                    } else if (C2934j.f12383d.equalsIgnoreCase(m899d)) {
                        this.f12313j = Long.parseLong(m896g);
                    }
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v14, types: [long] */
        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        /* renamed from: a */
        private long m1039a() {
            Date date = this.f12307d;
            char c = 0;
            if (date != null) {
                c = Math.max(0L, this.f12313j - date.getTime());
            }
            int i = this.f12315l;
            char c2 = c;
            if (i != -1) {
                c2 = Math.max((long) c, TimeUnit.SECONDS.toMillis(i));
            }
            long j = this.f12313j;
            return c2 + (j - this.f12312i) + (this.f12304a - j);
        }

        /* JADX WARN: Type inference failed for: r0v28, types: [long] */
        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* JADX WARN: Type inference failed for: r0v32, types: [long] */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        /* JADX WARN: Type inference failed for: r0v45, types: [long] */
        /* JADX WARN: Type inference failed for: r0v47, types: [long] */
        /* renamed from: b */
        private long m1038b() {
            C2855d m751l;
            if (this.f12306c.m751l().m1312d() != -1) {
                return TimeUnit.SECONDS.toMillis(m751l.m1312d());
            }
            char c = 0;
            if (this.f12311h != null) {
                Date date = this.f12307d;
                ?? time = this.f12311h.getTime() - (date != null ? date.getTime() : this.f12313j);
                if (time > 0) {
                    c = time;
                }
                return c;
            }
            char c2 = 0;
            if (this.f12309f != null) {
                c2 = 0;
                if (this.f12306c.m740w().m785j().m886A() == null) {
                    Date date2 = this.f12307d;
                    long time2 = (date2 != null ? date2.getTime() : this.f12312i) - this.f12309f.getTime();
                    c2 = 0;
                    if (time2 > 0) {
                        c2 = time2 / 10;
                    }
                }
            }
            return c2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0193  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x01a4  */
        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r0v62 */
        /* JADX WARN: Type inference failed for: r0v84, types: [long] */
        /* JADX WARN: Type inference failed for: r0v87, types: [long] */
        /* JADX WARN: Type inference failed for: r0v89, types: [long] */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1 */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1 */
        /* JADX WARN: Type inference failed for: r19v2 */
        /* JADX WARN: Type inference failed for: r19v3 */
        /* JADX WARN: Type inference failed for: r1v11, types: [long] */
        /* JADX WARN: Type inference failed for: r1v9, types: [long] */
        /* JADX WARN: Type inference failed for: r2v5, types: [long] */
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
        private static boolean m1035e(C2954p c2954p) {
            return (c2954p.m787h("If-Modified-Since") == null && c2954p.m787h("If-None-Match") == null) ? false : true;
        }

        /* renamed from: f */
        private boolean m1034f() {
            return this.f12306c.m751l().m1312d() == -1 && this.f12311h == null;
        }

        /* renamed from: c */
        public C2913b m1037c() {
            C2913b m1036d = m1036d();
            C2913b c2913b = m1036d;
            if (m1036d.f12302a != null) {
                c2913b = m1036d;
                if (this.f12305b.m788g().m1306j()) {
                    c2913b = new C2913b(null, null);
                }
            }
            return c2913b;
        }
    }

    private C2913b(C2954p c2954p, C2959r c2959r) {
        this.f12302a = c2954p;
        this.f12303b = c2959r;
    }

    /* renamed from: a */
    public static boolean m1040a(C2959r c2959r, C2954p c2954p) {
        int m749n = c2959r.m749n();
        if (m749n != 200 && m749n != 410 && m749n != 414 && m749n != 501 && m749n != 203 && m749n != 204) {
            if (m749n != 307) {
                if (m749n != 308 && m749n != 404 && m749n != 405) {
                    switch (m749n) {
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
            if (c2959r.m747p("Expires") == null && c2959r.m751l().m1312d() == -1 && !c2959r.m751l().m1313c() && !c2959r.m751l().m1314b()) {
                return false;
            }
        }
        boolean z = false;
        if (!c2959r.m751l().m1307i()) {
            z = false;
            if (!c2954p.m788g().m1307i()) {
                z = true;
            }
        }
        return z;
    }
}
