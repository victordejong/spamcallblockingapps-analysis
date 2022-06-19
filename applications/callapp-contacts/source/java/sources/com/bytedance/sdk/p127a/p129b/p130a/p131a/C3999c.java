package com.bytedance.sdk.p127a.p129b.p130a.p131a;

import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4107d;
import com.bytedance.sdk.p127a.p129b.C4132r;
import com.bytedance.sdk.p127a.p129b.C4146y;
import com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4022d;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4024e;
import com.explorestack.iab.vast.VastError;
import java.util.Date;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.a.b.a.a.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/a/c.class */
public final class C3999c {

    /* renamed from: a */
    public final C4146y f14485a;

    /* renamed from: b */
    public final C4098aa f14486b;

    /* renamed from: com.bytedance.sdk.a.b.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/a/c$a.class */
    public static class C4000a {

        /* renamed from: a */
        final long f14487a;

        /* renamed from: b */
        final C4146y f14488b;

        /* renamed from: c */
        final C4098aa f14489c;

        /* renamed from: d */
        private Date f14490d;

        /* renamed from: e */
        private String f14491e;

        /* renamed from: f */
        private Date f14492f;

        /* renamed from: g */
        private String f14493g;

        /* renamed from: h */
        private Date f14494h;

        /* renamed from: i */
        private long f14495i;

        /* renamed from: j */
        private long f14496j;

        /* renamed from: k */
        private String f14497k;

        /* renamed from: l */
        private int f14498l;

        public C4000a(long j, C4146y c4146y, C4098aa c4098aa) {
            this.f14498l = -1;
            this.f14487a = j;
            this.f14488b = c4146y;
            this.f14489c = c4098aa;
            if (c4098aa != null) {
                this.f14495i = c4098aa.m36601l();
                this.f14496j = c4098aa.m36600m();
                C4132r m36606g = c4098aa.m36606g();
                int m36471a = m36606g.m36471a();
                for (int i = 0; i < m36471a; i++) {
                    String m36470a = m36606g.m36470a(i);
                    String m36466b = m36606g.m36466b(i);
                    if ("Date".equalsIgnoreCase(m36470a)) {
                        this.f14490d = C4022d.m36885a(m36466b);
                        this.f14491e = m36466b;
                    } else if ("Expires".equalsIgnoreCase(m36470a)) {
                        this.f14494h = C4022d.m36885a(m36466b);
                    } else if ("Last-Modified".equalsIgnoreCase(m36470a)) {
                        this.f14492f = C4022d.m36885a(m36466b);
                        this.f14493g = m36466b;
                    } else if ("ETag".equalsIgnoreCase(m36470a)) {
                        this.f14497k = m36466b;
                    } else if ("Age".equalsIgnoreCase(m36470a)) {
                        this.f14498l = C4024e.m36875b(m36466b, -1);
                    }
                }
            }
        }

        /* renamed from: a */
        private static boolean m36989a(C4146y c4146y) {
            return (c4146y.m36340a("If-Modified-Since") == null && c4146y.m36340a("If-None-Match") == null) ? false : true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r0v58 */
        /* JADX WARN: Type inference failed for: r0v80, types: [long] */
        /* JADX WARN: Type inference failed for: r0v83, types: [long] */
        /* JADX WARN: Type inference failed for: r0v85, types: [long] */
        /* JADX WARN: Type inference failed for: r12v1 */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1 */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1 */
        /* JADX WARN: Type inference failed for: r19v2 */
        /* JADX WARN: Type inference failed for: r19v3 */
        /* JADX WARN: Type inference failed for: r1v11, types: [long] */
        /* JADX WARN: Type inference failed for: r1v9, types: [long] */
        /* JADX WARN: Type inference failed for: r2v10, types: [long] */
        /* renamed from: b */
        private C3999c m36988b() {
            if (this.f14489c == null) {
                return new C3999c(this.f14488b, null);
            }
            if ((!this.f14488b.m36334g() || this.f14489c.m36607f() != null) && C3999c.m36991a(this.f14489c, this.f14488b)) {
                C4107d m36335f = this.f14488b.m36335f();
                if (m36335f.m36568a() || m36989a(this.f14488b)) {
                    return new C3999c(this.f14488b, null);
                }
                C4107d m36602k = this.f14489c.m36602k();
                if (m36602k.m36558j()) {
                    return new C3999c(null, this.f14489c);
                }
                long m36986d = m36986d();
                ?? m36987c = m36987c();
                ?? r14 = m36987c;
                if (m36335f.m36565c() != -1) {
                    r14 = Math.min((long) m36987c, TimeUnit.SECONDS.toMillis(m36335f.m36565c()));
                }
                ?? millis = m36335f.m36560h() != -1 ? TimeUnit.SECONDS.toMillis(m36335f.m36560h()) : false;
                ?? r19 = 0;
                if (!m36602k.m36562f()) {
                    r19 = 0;
                    if (m36335f.m36561g() != -1) {
                        r19 = TimeUnit.SECONDS.toMillis(m36335f.m36561g());
                    }
                }
                if (!m36602k.m36568a()) {
                    long j = (millis == true ? 1L : 0L) + m36986d;
                    if (j < r19 + r14) {
                        C4098aa.C4099a m36604i = this.f14489c.m36604i();
                        if (j >= r14) {
                            m36604i.m36588a("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (m36986d > 86400000 && m36985e()) {
                            m36604i.m36588a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new C3999c(null, m36604i.m36599a());
                    }
                }
                String str = this.f14497k;
                String str2 = "If-Modified-Since";
                if (str != null) {
                    str2 = "If-None-Match";
                } else if (this.f14492f != null) {
                    str = this.f14493g;
                } else if (this.f14490d == null) {
                    return new C3999c(this.f14488b, null);
                } else {
                    str = this.f14491e;
                }
                C4132r.C4133a m36464c = this.f14488b.m36338c().m36464c();
                AbstractC3995a.f14478a.mo36361a(m36464c, str2, str);
                return new C3999c(this.f14488b.m36336e().m36332a(m36464c.m36463a()).m36319d(), this.f14489c);
            }
            return new C3999c(this.f14488b, null);
        }

        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v29, types: [long] */
        /* JADX WARN: Type inference failed for: r0v42, types: [long] */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* renamed from: c */
        private long m36987c() {
            C4107d m36602k = this.f14489c.m36602k();
            if (m36602k.m36565c() != -1) {
                return TimeUnit.SECONDS.toMillis(m36602k.m36565c());
            }
            if (this.f14494h != null) {
                Date date = this.f14490d;
                long time = this.f14494h.getTime() - (date != null ? date.getTime() : this.f14496j);
                if (time <= 0) {
                    return 0L;
                }
                return time;
            } else if (this.f14492f == null || this.f14489c.m36614a().m36341a().m36430k() != null) {
                return 0L;
            } else {
                Date date2 = this.f14490d;
                long time2 = (date2 != null ? date2.getTime() : this.f14495i) - this.f14492f.getTime();
                if (time2 <= 0) {
                    return 0L;
                }
                return time2 / 10;
            }
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [long] */
        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        /* renamed from: d */
        private long m36986d() {
            Date date = this.f14490d;
            char c = 0;
            if (date != null) {
                c = Math.max(0L, this.f14496j - date.getTime());
            }
            char c2 = c;
            if (this.f14498l != -1) {
                c2 = Math.max((long) c, TimeUnit.SECONDS.toMillis(this.f14498l));
            }
            long j = this.f14496j;
            return c2 + (j - this.f14495i) + (this.f14487a - j);
        }

        /* renamed from: e */
        private boolean m36985e() {
            return this.f14489c.m36602k().m36565c() == -1 && this.f14494h == null;
        }

        /* renamed from: a */
        public C3999c m36990a() {
            C3999c m36988b = m36988b();
            C3999c c3999c = m36988b;
            if (m36988b.f14485a != null) {
                c3999c = m36988b;
                if (this.f14488b.m36335f().m36559i()) {
                    c3999c = new C3999c(null, null);
                }
            }
            return c3999c;
        }
    }

    C3999c(C4146y c4146y, C4098aa c4098aa) {
        this.f14485a = c4146y;
        this.f14486b = c4098aa;
    }

    /* renamed from: a */
    public static boolean m36991a(C4098aa c4098aa, C4146y c4146y) {
        int m36610c = c4098aa.m36610c();
        if (m36610c != 200 && m36610c != 410 && m36610c != 414 && m36610c != 501 && m36610c != 203 && m36610c != 204) {
            if (m36610c != 307) {
                if (m36610c != 308 && m36610c != 404 && m36610c != 405) {
                    switch (m36610c) {
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
            if (c4098aa.m36613a("Expires") == null && c4098aa.m36602k().m36565c() == -1 && !c4098aa.m36602k().m36563e() && !c4098aa.m36602k().m36564d()) {
                return false;
            }
        }
        return !c4098aa.m36602k().m36566b() && !c4146y.m36335f().m36566b();
    }
}
