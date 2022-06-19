package com.squareup.okhttp;

import com.squareup.okhttp.C2943k;
/* renamed from: com.squareup.okhttp.r */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/r.class */
public final class C2959r {

    /* renamed from: a */
    private final C2954p f12469a;

    /* renamed from: b */
    private final Protocol f12470b;

    /* renamed from: c */
    private final int f12471c;

    /* renamed from: d */
    private final String f12472d;

    /* renamed from: e */
    private final C2942j f12473e;

    /* renamed from: f */
    private final C2943k f12474f;

    /* renamed from: g */
    private final AbstractC2962s f12475g;

    /* renamed from: h */
    private C2959r f12476h;

    /* renamed from: i */
    private C2959r f12477i;

    /* renamed from: j */
    private final C2959r f12478j;

    /* renamed from: k */
    private volatile C2855d f12479k;

    /* renamed from: com.squareup.okhttp.r$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/r$b.class */
    public static class C2961b {

        /* renamed from: a */
        private C2954p f12480a;

        /* renamed from: b */
        private Protocol f12481b;

        /* renamed from: c */
        private int f12482c;

        /* renamed from: d */
        private String f12483d;

        /* renamed from: e */
        private C2942j f12484e;

        /* renamed from: f */
        private C2943k.C2945b f12485f;

        /* renamed from: g */
        private AbstractC2962s f12486g;

        /* renamed from: h */
        private C2959r f12487h;

        /* renamed from: i */
        private C2959r f12488i;

        /* renamed from: j */
        private C2959r f12489j;

        public C2961b() {
            this.f12482c = -1;
            this.f12485f = new C2943k.C2945b();
        }

        private C2961b(C2959r c2959r) {
            this.f12482c = -1;
            this.f12480a = c2959r.f12469a;
            this.f12481b = c2959r.f12470b;
            this.f12482c = c2959r.f12471c;
            this.f12483d = c2959r.f12472d;
            this.f12484e = c2959r.f12473e;
            this.f12485f = c2959r.f12474f.m898e();
            this.f12486g = c2959r.f12475g;
            this.f12487h = c2959r.f12476h;
            this.f12488i = c2959r.f12477i;
            this.f12489j = c2959r.f12478j;
        }

        /* renamed from: o */
        private void m725o(C2959r c2959r) {
            if (c2959r.f12475g == null) {
                return;
            }
            throw new IllegalArgumentException("priorResponse.body != null");
        }

        /* renamed from: p */
        private void m724p(String str, C2959r c2959r) {
            if (c2959r.f12475g != null) {
                throw new IllegalArgumentException(str + ".body != null");
            } else if (c2959r.f12476h != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            } else if (c2959r.f12477i != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            } else if (c2959r.f12478j == null) {
            } else {
                throw new IllegalArgumentException(str + ".priorResponse != null");
            }
        }

        /* renamed from: k */
        public C2961b m729k(String str, String str2) {
            this.f12485f.m894b(str, str2);
            return this;
        }

        /* renamed from: l */
        public C2961b m728l(AbstractC2962s abstractC2962s) {
            this.f12486g = abstractC2962s;
            return this;
        }

        /* renamed from: m */
        public C2959r m727m() {
            if (this.f12480a != null) {
                if (this.f12481b == null) {
                    throw new IllegalStateException("protocol == null");
                }
                if (this.f12482c >= 0) {
                    return new C2959r(this);
                }
                throw new IllegalStateException("code < 0: " + this.f12482c);
            }
            throw new IllegalStateException("request == null");
        }

        /* renamed from: n */
        public C2961b m726n(C2959r c2959r) {
            if (c2959r != null) {
                m724p("cacheResponse", c2959r);
            }
            this.f12488i = c2959r;
            return this;
        }

        /* renamed from: q */
        public C2961b m723q(int i) {
            this.f12482c = i;
            return this;
        }

        /* renamed from: r */
        public C2961b m722r(C2942j c2942j) {
            this.f12484e = c2942j;
            return this;
        }

        /* renamed from: s */
        public C2961b m721s(String str, String str2) {
            this.f12485f.m887i(str, str2);
            return this;
        }

        /* renamed from: t */
        public C2961b m720t(C2943k c2943k) {
            this.f12485f = c2943k.m898e();
            return this;
        }

        /* renamed from: u */
        public C2961b m719u(String str) {
            this.f12483d = str;
            return this;
        }

        /* renamed from: v */
        public C2961b m718v(C2959r c2959r) {
            if (c2959r != null) {
                m724p("networkResponse", c2959r);
            }
            this.f12487h = c2959r;
            return this;
        }

        /* renamed from: w */
        public C2961b m717w(C2959r c2959r) {
            if (c2959r != null) {
                m725o(c2959r);
            }
            this.f12489j = c2959r;
            return this;
        }

        /* renamed from: x */
        public C2961b m716x(Protocol protocol) {
            this.f12481b = protocol;
            return this;
        }

        /* renamed from: y */
        public C2961b m715y(C2954p c2954p) {
            this.f12480a = c2954p;
            return this;
        }
    }

    private C2959r(C2961b c2961b) {
        this.f12469a = c2961b.f12480a;
        this.f12470b = c2961b.f12481b;
        this.f12471c = c2961b.f12482c;
        this.f12472d = c2961b.f12483d;
        this.f12473e = c2961b.f12484e;
        this.f12474f = c2961b.f12485f.m891e();
        this.f12475g = c2961b.f12486g;
        this.f12476h = c2961b.f12487h;
        this.f12477i = c2961b.f12488i;
        this.f12478j = c2961b.f12489j;
    }

    /* renamed from: k */
    public AbstractC2962s m752k() {
        return this.f12475g;
    }

    /* renamed from: l */
    public C2855d m751l() {
        C2855d c2855d = this.f12479k;
        if (c2855d == null) {
            c2855d = C2855d.m1305k(this.f12474f);
            this.f12479k = c2855d;
        }
        return c2855d;
    }

    /* renamed from: m */
    public C2959r m750m() {
        return this.f12477i;
    }

    /* renamed from: n */
    public int m749n() {
        return this.f12471c;
    }

    /* renamed from: o */
    public C2942j m748o() {
        return this.f12473e;
    }

    /* renamed from: p */
    public String m747p(String str) {
        return m746q(str, null);
    }

    /* renamed from: q */
    public String m746q(String str, String str2) {
        String m902a = this.f12474f.m902a(str);
        if (m902a != null) {
            str2 = m902a;
        }
        return str2;
    }

    /* renamed from: r */
    public C2943k m745r() {
        return this.f12474f;
    }

    /* renamed from: s */
    public String m744s() {
        return this.f12472d;
    }

    /* renamed from: t */
    public C2959r m743t() {
        return this.f12476h;
    }

    public String toString() {
        return "Response{protocol=" + this.f12470b + ", code=" + this.f12471c + ", message=" + this.f12472d + ", url=" + this.f12469a.m779p() + '}';
    }

    /* renamed from: u */
    public C2961b m742u() {
        return new C2961b();
    }

    /* renamed from: v */
    public Protocol m741v() {
        return this.f12470b;
    }

    /* renamed from: w */
    public C2954p m740w() {
        return this.f12469a;
    }
}
