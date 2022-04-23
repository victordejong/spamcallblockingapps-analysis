package com.bytedance.sdk.a.b.a.a;

import com.bytedance.sdk.a.b.a.c.d;
import com.bytedance.sdk.a.b.a.c.e;
import com.bytedance.sdk.a.b.aa;
import com.bytedance.sdk.a.b.r;
import com.bytedance.sdk.a.b.y;
import com.explorestack.iab.vast.VastError;
import java.util.Date;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final y f7836a;

    /* renamed from: b  reason: collision with root package name */
    public final aa f7837b;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/a/c$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final long f7838a;

        /* renamed from: b  reason: collision with root package name */
        final y f7839b;

        /* renamed from: c  reason: collision with root package name */
        final aa f7840c;

        /* renamed from: d  reason: collision with root package name */
        private Date f7841d;
        private String e;
        private Date f;
        private String g;
        private Date h;
        private long i;
        private long j;
        private String k;
        private int l;

        public a(long j, y yVar, aa aaVar) {
            this.l = -1;
            this.f7838a = j;
            this.f7839b = yVar;
            this.f7840c = aaVar;
            if (aaVar != null) {
                this.i = aaVar.l();
                this.j = aaVar.m();
                r g = aaVar.g();
                int a2 = g.a();
                for (int i = 0; i < a2; i++) {
                    String a3 = g.a(i);
                    String b2 = g.b(i);
                    if ("Date".equalsIgnoreCase(a3)) {
                        this.f7841d = d.a(b2);
                        this.e = b2;
                    } else if ("Expires".equalsIgnoreCase(a3)) {
                        this.h = d.a(b2);
                    } else if ("Last-Modified".equalsIgnoreCase(a3)) {
                        this.f = d.a(b2);
                        this.g = b2;
                    } else if ("ETag".equalsIgnoreCase(a3)) {
                        this.k = b2;
                    } else if ("Age".equalsIgnoreCase(a3)) {
                        this.l = e.b(b2, -1);
                    }
                }
            }
        }

        private static boolean a(y yVar) {
            return (yVar.a("If-Modified-Since") == null && yVar.a("If-None-Match") == null) ? false : true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1, types: [long] */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1, types: [long] */
        /* JADX WARN: Type inference failed for: r19v2 */
        /* JADX WARN: Type inference failed for: r19v4 */
        /* JADX WARN: Unknown variable types count: 3 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private com.bytedance.sdk.a.b.a.a.c b() {
            /*
                Method dump skipped, instructions count: 456
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.a.a.c.a.b():com.bytedance.sdk.a.b.a.a.c");
        }

        private long c() {
            com.bytedance.sdk.a.b.d k = this.f7840c.k();
            if (k.c() != -1) {
                return TimeUnit.SECONDS.toMillis(k.c());
            }
            if (this.h != null) {
                Date date = this.f7841d;
                long time = this.h.getTime() - (date != null ? date.getTime() : this.j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            } else if (this.f == null || this.f7840c.a().a().k() != null) {
                return 0L;
            } else {
                Date date2 = this.f7841d;
                long time2 = (date2 != null ? date2.getTime() : this.i) - this.f.getTime();
                if (time2 > 0) {
                    return time2 / 10;
                }
                return 0L;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private long d() {
            /*
                r7 = this;
                r0 = r7
                java.util.Date r0 = r0.f7841d
                r8 = r0
                r0 = 0
                r9 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0019
                r0 = 0
                r1 = r7
                long r1 = r1.j
                r2 = r8
                long r2 = r2.getTime()
                long r1 = r1 - r2
                long r0 = java.lang.Math.max(r0, r1)
                r9 = r0
            L_0x0019:
                r0 = r9
                r11 = r0
                r0 = r7
                int r0 = r0.l
                r1 = -1
                if (r0 == r1) goto L_0x0035
                r0 = r9
                java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS
                r2 = r7
                int r2 = r2.l
                long r2 = (long) r2
                long r1 = r1.toMillis(r2)
                long r0 = java.lang.Math.max(r0, r1)
                r11 = r0
            L_0x0035:
                r0 = r7
                long r0 = r0.j
                r9 = r0
                r0 = r11
                r1 = r9
                r2 = r7
                long r2 = r2.i
                long r1 = r1 - r2
                long r0 = r0 + r1
                r1 = r7
                long r1 = r1.f7838a
                r2 = r9
                long r1 = r1 - r2
                long r0 = r0 + r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.a.a.c.a.d():long");
        }

        private boolean e() {
            return this.f7840c.k().c() == -1 && this.h == null;
        }

        public c a() {
            c b2 = b();
            c cVar = b2;
            if (b2.f7836a != null) {
                cVar = b2;
                if (this.f7839b.f().i()) {
                    cVar = new c(null, null);
                }
            }
            return cVar;
        }
    }

    c(y yVar, aa aaVar) {
        this.f7836a = yVar;
        this.f7837b = aaVar;
    }

    public static boolean a(aa aaVar, y yVar) {
        int c2 = aaVar.c();
        if (!(c2 == 200 || c2 == 410 || c2 == 414 || c2 == 501 || c2 == 203 || c2 == 204)) {
            if (c2 != 307) {
                if (!(c2 == 308 || c2 == 404 || c2 == 405)) {
                    switch (c2) {
                        case VastError.ERROR_CODE_GENERAL_WRAPPER /* 300 */:
                        case VastError.ERROR_CODE_BAD_URI /* 301 */:
                            break;
                        case VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT /* 302 */:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (aaVar.a("Expires") == null && aaVar.k().c() == -1 && !aaVar.k().e() && !aaVar.k().d()) {
                return false;
            }
        }
        return !aaVar.k().b() && !yVar.f().b();
    }
}
