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

        private C2961b(C2959r rVar) {
            this.f12482c = -1;
            this.f12480a = rVar.f12469a;
            this.f12481b = rVar.f12470b;
            this.f12482c = rVar.f12471c;
            this.f12483d = rVar.f12472d;
            this.f12484e = rVar.f12473e;
            this.f12485f = rVar.f12474f.m898e();
            this.f12486g = rVar.f12475g;
            this.f12487h = rVar.f12476h;
            this.f12488i = rVar.f12477i;
            this.f12489j = rVar.f12478j;
        }

        /* renamed from: o */
        private void m725o(C2959r rVar) {
            if (rVar.f12475g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        /* renamed from: p */
        private void m724p(String str, C2959r rVar) {
            if (rVar.f12475g != null) {
                throw new IllegalArgumentException(str + ".body != null");
            } else if (rVar.f12476h != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            } else if (rVar.f12477i != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            } else if (rVar.f12478j != null) {
                throw new IllegalArgumentException(str + ".priorResponse != null");
            }
        }

        /* renamed from: k */
        public C2961b m729k(String str, String str2) {
            this.f12485f.m894b(str, str2);
            return this;
        }

        /* renamed from: l */
        public C2961b m728l(AbstractC2962s sVar) {
            this.f12486g = sVar;
            return this;
        }

        /* renamed from: m */
        public C2959r m727m() {
            if (this.f12480a == null) {
                throw new IllegalStateException("request == null");
            } else if (this.f12481b == null) {
                throw new IllegalStateException("protocol == null");
            } else if (this.f12482c >= 0) {
                return new C2959r(this);
            } else {
                throw new IllegalStateException("code < 0: " + this.f12482c);
            }
        }

        /* renamed from: n */
        public C2961b m726n(C2959r rVar) {
            if (rVar != null) {
                m724p("cacheResponse", rVar);
            }
            this.f12488i = rVar;
            return this;
        }

        /* renamed from: q */
        public C2961b m723q(int i) {
            this.f12482c = i;
            return this;
        }

        /* renamed from: r */
        public C2961b m722r(C2942j jVar) {
            this.f12484e = jVar;
            return this;
        }

        /* renamed from: s */
        public C2961b m721s(String str, String str2) {
            this.f12485f.m887i(str, str2);
            return this;
        }

        /* renamed from: t */
        public C2961b m720t(C2943k kVar) {
            this.f12485f = kVar.m898e();
            return this;
        }

        /* renamed from: u */
        public C2961b m719u(String str) {
            this.f12483d = str;
            return this;
        }

        /* renamed from: v */
        public C2961b m718v(C2959r rVar) {
            if (rVar != null) {
                m724p("networkResponse", rVar);
            }
            this.f12487h = rVar;
            return this;
        }

        /* renamed from: w */
        public C2961b m717w(C2959r rVar) {
            if (rVar != null) {
                m725o(rVar);
            }
            this.f12489j = rVar;
            return this;
        }

        /* renamed from: x */
        public C2961b m716x(Protocol protocol) {
            this.f12481b = protocol;
            return this;
        }

        /* renamed from: y */
        public C2961b m715y(C2954p pVar) {
            this.f12480a = pVar;
            return this;
        }
    }

    private C2959r(C2961b bVar) {
        this.f12469a = bVar.f12480a;
        this.f12470b = bVar.f12481b;
        this.f12471c = bVar.f12482c;
        this.f12472d = bVar.f12483d;
        this.f12473e = bVar.f12484e;
        this.f12474f = bVar.f12485f.m891e();
        this.f12475g = bVar.f12486g;
        this.f12476h = bVar.f12487h;
        this.f12477i = bVar.f12488i;
        this.f12478j = bVar.f12489j;
    }

    /* renamed from: k */
    public AbstractC2962s m752k() {
        return this.f12475g;
    }

    /* renamed from: l */
    public C2855d m751l() {
        C2855d dVar = this.f12479k;
        if (dVar == null) {
            dVar = C2855d.m1305k(this.f12474f);
            this.f12479k = dVar;
        }
        return dVar;
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
        String a = this.f12474f.m902a(str);
        if (a != null) {
            str2 = a;
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
