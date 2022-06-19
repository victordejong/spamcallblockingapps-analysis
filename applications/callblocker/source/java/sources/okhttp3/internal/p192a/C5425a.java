package okhttp3.internal.p192a;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.AbstractC5406ad;
import okhttp3.AbstractC5544u;
import okhttp3.C5400aa;
import okhttp3.C5404ac;
import okhttp3.C5539s;
import okhttp3.EnumC5553y;
import okhttp3.internal.AbstractC5424a;
import okhttp3.internal.C5449c;
import okhttp3.internal.p192a.C5428c;
import okhttp3.internal.p193b.C5441e;
import okhttp3.internal.p193b.C5442f;
import okhttp3.internal.p193b.C5444h;
import p000a.AbstractC0006d;
import p000a.AbstractC0007e;
import p000a.AbstractC0023r;
import p000a.AbstractC0024s;
import p000a.C0005c;
import p000a.C0014l;
import p000a.C0025t;
/* renamed from: okhttp3.internal.a.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/a/a.class */
public final class C5425a implements AbstractC5544u {

    /* renamed from: a */
    final AbstractC5433e f22679a;

    public C5425a(AbstractC5433e abstractC5433e) {
        this.f22679a = abstractC5433e;
    }

    /* renamed from: a */
    private static C5404ac m741a(C5404ac c5404ac) {
        C5404ac c5404ac2 = c5404ac;
        if (c5404ac != null) {
            c5404ac2 = c5404ac;
            if (c5404ac.m803f() != null) {
                c5404ac2 = c5404ac.m802g().m789a((AbstractC5406ad) null).m797a();
            }
        }
        return c5404ac2;
    }

    /* renamed from: a */
    private C5404ac m740a(final AbstractC5427b abstractC5427b, C5404ac c5404ac) {
        C5404ac c5404ac2;
        if (abstractC5427b == null) {
            c5404ac2 = c5404ac;
        } else {
            AbstractC0023r m737a = abstractC5427b.m737a();
            c5404ac2 = c5404ac;
            if (m737a != null) {
                final AbstractC0007e mo87c = c5404ac.m803f().mo87c();
                final AbstractC0006d m22523a = C0014l.m22523a(m737a);
                AbstractC0024s abstractC0024s = new AbstractC0024s() { // from class: okhttp3.internal.a.a.1

                    /* renamed from: a */
                    boolean f22680a;

                    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
                    @Override // p000a.AbstractC0024s
                    /* renamed from: a */
                    public long mo90a(C0005c c0005c, long j) {
                        try {
                            char a = mo87c.mo90a(c0005c, j);
                            if (a == -1) {
                                if (!this.f22680a) {
                                    this.f22680a = true;
                                    m22523a.close();
                                }
                                a = 65535;
                            } else {
                                c0005c.m22569a(m22523a.mo22495c(), c0005c.m22562b() - a, a);
                                m22523a.mo22505t();
                            }
                            return a;
                        } catch (IOException e) {
                            if (!this.f22680a) {
                                this.f22680a = true;
                                abstractC5427b.m736b();
                            }
                            throw e;
                        }
                    }

                    @Override // p000a.AbstractC0024s
                    /* renamed from: a */
                    public C0025t mo405a() {
                        return mo87c.mo405a();
                    }

                    @Override // p000a.AbstractC0024s, java.io.Closeable, java.lang.AutoCloseable
                    public void close() {
                        if (!this.f22680a && !C5449c.m674a(this, 100, TimeUnit.MILLISECONDS)) {
                            this.f22680a = true;
                            abstractC5427b.m736b();
                        }
                        mo87c.close();
                    }
                };
                c5404ac2 = c5404ac.m802g().m789a(new C5444h(c5404ac.m809a("Content-Type"), c5404ac.m803f().mo88b(), C0014l.m22522a(abstractC0024s))).m797a();
            }
        }
        return c5404ac2;
    }

    /* renamed from: a */
    private static C5539s m739a(C5539s c5539s, C5539s c5539s2) {
        C5539s.C5540a c5540a = new C5539s.C5540a();
        int m284a = c5539s.m284a();
        for (int i = 0; i < m284a; i++) {
            String m283a = c5539s.m283a(i);
            String m278b = c5539s.m278b(i);
            if ((!"Warning".equalsIgnoreCase(m283a) || !m278b.startsWith("1")) && (m738b(m283a) || !m742a(m283a) || c5539s2.m282a(m283a) == null)) {
                AbstractC5424a.f22678a.mo165a(c5540a, m283a, m278b);
            }
        }
        int m284a2 = c5539s2.m284a();
        for (int i2 = 0; i2 < m284a2; i2++) {
            String m283a2 = c5539s2.m283a(i2);
            if (!m738b(m283a2) && m742a(m283a2)) {
                AbstractC5424a.f22678a.mo165a(c5540a, m283a2, c5539s2.m278b(i2));
            }
        }
        return c5540a.m276a();
    }

    /* renamed from: a */
    static boolean m742a(String str) {
        return !"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str);
    }

    /* renamed from: b */
    static boolean m738b(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }

    /* JADX WARN: Finally extract failed */
    @Override // okhttp3.AbstractC5544u
    /* renamed from: a */
    public C5404ac mo216a(AbstractC5544u.AbstractC5545a abstractC5545a) {
        C5404ac c5404ac;
        C5404ac m718a = this.f22679a != null ? this.f22679a.m718a(abstractC5545a.mo215a()) : null;
        C5428c m734a = new C5428c.C5429a(System.currentTimeMillis(), abstractC5545a.mo215a(), m718a).m734a();
        C5400aa c5400aa = m734a.f22685a;
        C5404ac c5404ac2 = m734a.f22686b;
        if (this.f22679a != null) {
            this.f22679a.m715a(m734a);
        }
        if (m718a != null && c5404ac2 == null) {
            C5449c.m673a(m718a.m803f());
        }
        if (c5400aa == null && c5404ac2 == null) {
            c5404ac = new C5404ac.C5405a().m791a(abstractC5545a.mo215a()).m786a(EnumC5553y.HTTP_1_1).m796a(504).m794a("Unsatisfiable Request (only-if-cached)").m789a(C5449c.f22758c).m795a(-1L).m785b(System.currentTimeMillis()).m797a();
        } else if (c5400aa == null) {
            c5404ac = c5404ac2.m802g().m784b(m741a(c5404ac2)).m797a();
        } else {
            try {
                C5404ac mo214a = abstractC5545a.mo214a(c5400aa);
                if (mo214a == null && m718a != null) {
                    C5449c.m673a(m718a.m803f());
                }
                if (c5404ac2 != null) {
                    if (mo214a.m807b() == 304) {
                        c5404ac = c5404ac2.m802g().m787a(m739a(c5404ac2.m804e(), mo214a.m804e())).m795a(mo214a.m799j()).m785b(mo214a.m798k()).m784b(m741a(c5404ac2)).m790a(m741a(mo214a)).m797a();
                        mo214a.m803f().close();
                        this.f22679a.m719a();
                        this.f22679a.m716a(c5404ac2, c5404ac);
                    } else {
                        C5449c.m673a(c5404ac2.m803f());
                    }
                }
                C5404ac m797a = mo214a.m802g().m784b(m741a(c5404ac2)).m790a(m741a(mo214a)).m797a();
                c5404ac = m797a;
                if (this.f22679a != null) {
                    if (!C5441e.m702b(m797a) || !C5428c.m735a(m797a, c5400aa)) {
                        c5404ac = m797a;
                        if (C5442f.m701a(c5400aa.m825b())) {
                            try {
                                this.f22679a.m714b(c5400aa);
                                c5404ac = m797a;
                            } catch (IOException e) {
                                c5404ac = m797a;
                            }
                        }
                    } else {
                        c5404ac = m740a(this.f22679a.m717a(m797a), m797a);
                    }
                }
            } catch (Throwable th) {
                if (0 == 0 && m718a != null) {
                    C5449c.m673a(m718a.m803f());
                }
                throw th;
            }
        }
        return c5404ac;
    }
}
