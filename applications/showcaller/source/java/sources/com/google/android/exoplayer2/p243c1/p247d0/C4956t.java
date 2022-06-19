package com.google.android.exoplayer2.p243c1.p247d0;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5512g;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
import java.util.Collections;
/* renamed from: com.google.android.exoplayer2.c1.d0.t */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/t.class */
public final class C4956t implements AbstractC4946o {

    /* renamed from: a */
    private final String f15356a;

    /* renamed from: b */
    private final C5536v f15357b;

    /* renamed from: c */
    private final C5535u f15358c;

    /* renamed from: d */
    private AbstractC4996v f15359d;

    /* renamed from: e */
    private Format f15360e;

    /* renamed from: f */
    private String f15361f;

    /* renamed from: g */
    private int f15362g;

    /* renamed from: h */
    private int f15363h;

    /* renamed from: i */
    private int f15364i;

    /* renamed from: j */
    private int f15365j;

    /* renamed from: k */
    private long f15366k;

    /* renamed from: l */
    private boolean f15367l;

    /* renamed from: m */
    private int f15368m;

    /* renamed from: n */
    private int f15369n;

    /* renamed from: o */
    private int f15370o;

    /* renamed from: p */
    private boolean f15371p;

    /* renamed from: q */
    private long f15372q;

    /* renamed from: r */
    private int f15373r;

    /* renamed from: s */
    private long f15374s;

    /* renamed from: t */
    private int f15375t;

    public C4956t(String str) {
        this.f15356a = str;
        C5536v c5536v = new C5536v(1024);
        this.f15357b = c5536v;
        this.f15358c = new C5535u(c5536v.f17941a);
    }

    /* renamed from: a */
    private static long m21082a(C5535u c5535u) {
        return c5535u.m18703h((c5535u.m18703h(2) + 1) * 8);
    }

    /* renamed from: g */
    private void m21081g(C5535u c5535u) {
        if (!c5535u.m18704g()) {
            this.f15367l = true;
            m21076l(c5535u);
        } else if (!this.f15367l) {
            return;
        }
        if (this.f15368m == 0) {
            if (this.f15369n != 0) {
                throw new ParserException();
            }
            m21077k(c5535u, m21078j(c5535u));
            if (!this.f15371p) {
                return;
            }
            c5535u.m18694q((int) this.f15372q);
            return;
        }
        throw new ParserException();
    }

    /* renamed from: h */
    private int m21080h(C5535u c5535u) {
        int m18709b = c5535u.m18709b();
        Pair<Integer, Integer> m18884f = C5512g.m18884f(c5535u, true);
        this.f15373r = ((Integer) m18884f.first).intValue();
        this.f15375t = ((Integer) m18884f.second).intValue();
        return m18709b - c5535u.m18709b();
    }

    /* renamed from: i */
    private void m21079i(C5535u c5535u) {
        int m18703h = c5535u.m18703h(3);
        this.f15370o = m18703h;
        if (m18703h == 0) {
            c5535u.m18694q(8);
        } else if (m18703h == 1) {
            c5535u.m18694q(9);
        } else if (m18703h == 3 || m18703h == 4 || m18703h == 5) {
            c5535u.m18694q(6);
        } else if (m18703h != 6 && m18703h != 7) {
            throw new IllegalStateException();
        } else {
            c5535u.m18694q(1);
        }
    }

    /* renamed from: j */
    private int m21078j(C5535u c5535u) {
        int m18703h;
        int i;
        if (this.f15370o == 0) {
            int i2 = 0;
            do {
                m18703h = c5535u.m18703h(8);
                i = i2 + m18703h;
                i2 = i;
            } while (m18703h == 255);
            return i;
        }
        throw new ParserException();
    }

    /* renamed from: k */
    private void m21077k(C5535u c5535u, int i) {
        int m18706e = c5535u.m18706e();
        if ((m18706e & 7) == 0) {
            this.f15357b.m18680M(m18706e >> 3);
        } else {
            c5535u.m18702i(this.f15357b.f17941a, 0, i * 8);
            this.f15357b.m18680M(0);
        }
        this.f15359d.mo19985b(this.f15357b, i);
        this.f15359d.mo19984c(this.f15366k, 1, i, 0, null);
        this.f15366k += this.f15374s;
    }

    /* renamed from: l */
    private void m21076l(C5535u c5535u) {
        boolean m18704g;
        int m18703h = c5535u.m18703h(1);
        int m18703h2 = m18703h == 1 ? c5535u.m18703h(1) : 0;
        this.f15368m = m18703h2;
        if (m18703h2 == 0) {
            if (m18703h == 1) {
                m21082a(c5535u);
            }
            if (!c5535u.m18704g()) {
                throw new ParserException();
            }
            this.f15369n = c5535u.m18703h(6);
            int m18703h3 = c5535u.m18703h(4);
            int m18703h4 = c5535u.m18703h(3);
            if (m18703h3 != 0 || m18703h4 != 0) {
                throw new ParserException();
            }
            if (m18703h == 0) {
                int m18706e = c5535u.m18706e();
                int m21080h = m21080h(c5535u);
                c5535u.m18696o(m18706e);
                byte[] bArr = new byte[(m21080h + 7) / 8];
                c5535u.m18702i(bArr, 0, m21080h);
                Format m21740o = Format.m21740o(this.f15361f, "audio/mp4a-latm", null, -1, -1, this.f15375t, this.f15373r, Collections.singletonList(bArr), null, 0, this.f15356a);
                if (!m21740o.equals(this.f15360e)) {
                    this.f15360e = m21740o;
                    this.f15374s = 1024000000 / m21740o.f14475z;
                    this.f15359d.mo19983d(m21740o);
                }
            } else {
                c5535u.m18694q(((int) m21082a(c5535u)) - m21080h(c5535u));
            }
            m21079i(c5535u);
            boolean m18704g2 = c5535u.m18704g();
            this.f15371p = m18704g2;
            this.f15372q = 0L;
            if (m18704g2) {
                if (m18703h == 1) {
                    this.f15372q = m21082a(c5535u);
                } else {
                    do {
                        m18704g = c5535u.m18704g();
                        this.f15372q = (this.f15372q << 8) + c5535u.m18703h(8);
                    } while (m18704g);
                }
            }
            if (!c5535u.m18704g()) {
                return;
            }
            c5535u.m18694q(8);
            return;
        }
        throw new ParserException();
    }

    /* renamed from: m */
    private void m21075m(int i) {
        this.f15357b.m18684I(i);
        this.f15358c.m18698m(this.f15357b.f17941a);
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: b */
    public void mo21073b(C5536v c5536v) {
        while (c5536v.m18678a() > 0) {
            int i = this.f15362g;
            if (i != 0) {
                if (i == 1) {
                    int m18653z = c5536v.m18653z();
                    if ((m18653z & 224) == 224) {
                        this.f15365j = m18653z;
                        this.f15362g = 2;
                    } else if (m18653z != 86) {
                        this.f15362g = 0;
                    }
                } else if (i == 2) {
                    int m18653z2 = ((this.f15365j & (-225)) << 8) | c5536v.m18653z();
                    this.f15364i = m18653z2;
                    if (m18653z2 > this.f15357b.f17941a.length) {
                        m21075m(m18653z2);
                    }
                    this.f15363h = 0;
                    this.f15362g = 3;
                } else if (i != 3) {
                    throw new IllegalStateException();
                } else {
                    int min = Math.min(c5536v.m18678a(), this.f15364i - this.f15363h);
                    c5536v.m18671h(this.f15358c.f17937a, this.f15363h, min);
                    int i2 = this.f15363h + min;
                    this.f15363h = i2;
                    if (i2 == this.f15364i) {
                        this.f15358c.m18696o(0);
                        m21081g(this.f15358c);
                        this.f15362g = 0;
                    }
                }
            } else if (c5536v.m18653z() == 86) {
                this.f15362g = 1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: c */
    public void mo21072c() {
        this.f15362g = 0;
        this.f15367l = false;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: d */
    public void mo21071d() {
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: e */
    public void mo21070e(AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        c4937d.m21159a();
        this.f15359d = abstractC4980j.mo19748t(c4937d.m21157c(), 1);
        this.f15361f = c4937d.m21158b();
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: f */
    public void mo21069f(long j, int i) {
        this.f15366k = j;
    }
}
