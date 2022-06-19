package com.bytedance.sdk.p127a.p129b.p130a.p131a;

import com.bytedance.sdk.p127a.p128a.AbstractC3971d;
import com.bytedance.sdk.p127a.p128a.AbstractC3972e;
import com.bytedance.sdk.p127a.p128a.AbstractC3989r;
import com.bytedance.sdk.p127a.p128a.AbstractC3990s;
import com.bytedance.sdk.p127a.p128a.C3969c;
import com.bytedance.sdk.p127a.p128a.C3979l;
import com.bytedance.sdk.p127a.p128a.C3991t;
import com.bytedance.sdk.p127a.p129b.AbstractC4100ab;
import com.bytedance.sdk.p127a.p129b.AbstractC4137t;
import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4132r;
import com.bytedance.sdk.p127a.p129b.C4146y;
import com.bytedance.sdk.p127a.p129b.EnumC4143w;
import com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p131a.C3999c;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4024e;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4025f;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4027h;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.a.b.a.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/a/a.class */
public final class C3996a implements AbstractC4137t {

    /* renamed from: a */
    final AbstractC4004e f14479a;

    public C3996a(AbstractC4004e abstractC4004e) {
        this.f14479a = abstractC4004e;
    }

    /* renamed from: a */
    private C4098aa m36997a(final AbstractC3998b abstractC3998b, C4098aa c4098aa) throws IOException {
        AbstractC3989r m36993a;
        if (abstractC3998b != null && (m36993a = abstractC3998b.m36993a()) != null) {
            final AbstractC3972e mo36576d = c4098aa.m36605h().mo36576d();
            final AbstractC3971d m37086a = C3979l.m37086a(m36993a);
            return c4098aa.m36604i().m36595a(new C4027h(c4098aa.m36613a("Content-Type"), c4098aa.m36605h().mo36577b(), C3979l.m37085a(new AbstractC3990s() { // from class: com.bytedance.sdk.a.b.a.a.a.1

                /* renamed from: a */
                boolean f14480a;

                @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
                /* renamed from: a */
                public long mo36719a(C3969c c3969c, long j) throws IOException {
                    try {
                        long a = mo36576d.mo36719a(c3969c, j);
                        if (a != -1) {
                            c3969c.m37131a(m37086a.mo37060c(), c3969c.m37124b() - a, a);
                            m37086a.mo37069u();
                            return a;
                        } else if (this.f14480a) {
                            return -1L;
                        } else {
                            this.f14480a = true;
                            m37086a.close();
                            return -1L;
                        }
                    } catch (IOException e) {
                        if (!this.f14480a) {
                            this.f14480a = true;
                            abstractC3998b.m36992b();
                        }
                        throw e;
                    }
                }

                @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
                /* renamed from: a */
                public C3991t mo36720a() {
                    return mo36576d.mo36720a();
                }

                @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    if (!this.f14480a && !C4015c.m36916a(this, 100, TimeUnit.MILLISECONDS)) {
                        this.f14480a = true;
                        abstractC3998b.m36992b();
                    }
                    mo36576d.close();
                }
            }))).m36599a();
        }
        return c4098aa;
    }

    /* renamed from: a */
    private static C4098aa m36996a(C4098aa c4098aa) {
        C4098aa c4098aa2 = c4098aa;
        if (c4098aa != null) {
            c4098aa2 = c4098aa;
            if (c4098aa.m36605h() != null) {
                c4098aa2 = c4098aa.m36604i().m36595a((AbstractC4100ab) null).m36599a();
            }
        }
        return c4098aa2;
    }

    /* renamed from: a */
    private static C4132r m36995a(C4132r c4132r, C4132r c4132r2) {
        C4132r.C4133a c4133a = new C4132r.C4133a();
        int m36471a = c4132r.m36471a();
        for (int i = 0; i < m36471a; i++) {
            String m36470a = c4132r.m36470a(i);
            String m36466b = c4132r.m36466b(i);
            if ((!"Warning".equalsIgnoreCase(m36470a) || !m36466b.startsWith("1")) && (!m36994a(m36470a) || c4132r2.m36469a(m36470a) == null)) {
                AbstractC3995a.f14478a.mo36361a(c4133a, m36470a, m36466b);
            }
        }
        int m36471a2 = c4132r2.m36471a();
        for (int i2 = 0; i2 < m36471a2; i2++) {
            String m36470a2 = c4132r2.m36470a(i2);
            if (!"Content-Length".equalsIgnoreCase(m36470a2) && m36994a(m36470a2)) {
                AbstractC3995a.f14478a.mo36361a(c4133a, m36470a2, c4132r2.m36466b(i2));
            }
        }
        return c4133a.m36463a();
    }

    /* renamed from: a */
    static boolean m36994a(String str) {
        return !"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str);
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.bytedance.sdk.p127a.p129b.AbstractC4137t
    /* renamed from: a */
    public final C4098aa mo36406a(AbstractC4137t.AbstractC4138a abstractC4138a) throws IOException {
        AbstractC4004e abstractC4004e = this.f14479a;
        C4098aa m36971a = abstractC4004e != null ? abstractC4004e.m36971a(abstractC4138a.mo36405a()) : null;
        C3999c m36990a = new C3999c.C4000a(System.currentTimeMillis(), abstractC4138a.mo36405a(), m36971a).m36990a();
        C4146y c4146y = m36990a.f14485a;
        C4098aa c4098aa = m36990a.f14486b;
        AbstractC4004e abstractC4004e2 = this.f14479a;
        if (abstractC4004e2 != null) {
            abstractC4004e2.m36974a(m36990a);
        }
        if (m36971a != null && c4098aa == null) {
            C4015c.m36914a(m36971a.m36605h());
        }
        if (c4146y == null && c4098aa == null) {
            return new C4098aa.C4099a().m36591a(abstractC4138a.mo36405a()).m36592a(EnumC4143w.HTTP_1_1).m36598a(504).m36590a("Unsatisfiable Request (only-if-cached)").m36595a(C4015c.f14576c).m36597a(-1L).m36587b(System.currentTimeMillis()).m36599a();
        }
        if (c4146y == null) {
            return c4098aa.m36604i().m36586b(m36996a(c4098aa)).m36599a();
        }
        try {
            C4098aa mo36404a = abstractC4138a.mo36404a(c4146y);
            if (mo36404a == null && m36971a != null) {
                C4015c.m36914a(m36971a.m36605h());
            }
            if (c4098aa != null) {
                if (mo36404a.m36610c() == 304) {
                    C4098aa m36599a = c4098aa.m36604i().m36593a(m36995a(c4098aa.m36606g(), mo36404a.m36606g())).m36597a(mo36404a.m36601l()).m36587b(mo36404a.m36600m()).m36586b(m36996a(c4098aa)).m36596a(m36996a(mo36404a)).m36599a();
                    mo36404a.m36605h().close();
                    this.f14479a.m36975a();
                    this.f14479a.m36972a(c4098aa, m36599a);
                    return m36599a;
                }
                C4015c.m36914a(c4098aa.m36605h());
            }
            C4098aa m36599a2 = mo36404a.m36604i().m36586b(m36996a(c4098aa)).m36596a(m36996a(mo36404a)).m36599a();
            if (this.f14479a != null) {
                if (C4024e.m36876b(m36599a2) && C3999c.m36991a(m36599a2, c4146y)) {
                    return m36997a(this.f14479a.m36973a(m36599a2), m36599a2);
                }
                if (C4025f.m36874a(c4146y.m36339b())) {
                    try {
                        this.f14479a.m36970b(c4146y);
                    } catch (IOException e) {
                    }
                }
            }
            return m36599a2;
        } catch (Throwable th) {
            if (m36971a != null) {
                C4015c.m36914a(m36971a.m36605h());
            }
            throw th;
        }
    }
}
