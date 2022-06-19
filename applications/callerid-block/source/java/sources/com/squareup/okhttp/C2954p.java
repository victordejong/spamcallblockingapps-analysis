package com.squareup.okhttp;

import com.squareup.okhttp.C2943k;
import com.squareup.okhttp.internal.http.C2932h;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
/* renamed from: com.squareup.okhttp.p */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/p.class */
public final class C2954p {

    /* renamed from: a */
    private final C2946l f12453a;

    /* renamed from: b */
    private final String f12454b;

    /* renamed from: c */
    private final C2943k f12455c;

    /* renamed from: d */
    private final AbstractC2957q f12456d;

    /* renamed from: e */
    private final Object f12457e;

    /* renamed from: f */
    private volatile URL f12458f;

    /* renamed from: g */
    private volatile URI f12459g;

    /* renamed from: h */
    private volatile C2855d f12460h;

    /* renamed from: com.squareup.okhttp.p$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/p$b.class */
    public static class C2956b {

        /* renamed from: a */
        private C2946l f12461a;

        /* renamed from: b */
        private String f12462b;

        /* renamed from: c */
        private C2943k.C2945b f12463c;

        /* renamed from: d */
        private AbstractC2957q f12464d;

        /* renamed from: e */
        private Object f12465e;

        public C2956b() {
            this.f12462b = "GET";
            this.f12463c = new C2943k.C2945b();
        }

        private C2956b(C2954p c2954p) {
            this.f12461a = c2954p.f12453a;
            this.f12462b = c2954p.f12454b;
            this.f12464d = c2954p.f12456d;
            this.f12465e = c2954p.f12457e;
            this.f12463c = c2954p.f12455c.m898e();
        }

        /* renamed from: f */
        public C2956b m773f(String str, String str2) {
            this.f12463c.m894b(str, str2);
            return this;
        }

        /* renamed from: g */
        public C2954p m772g() {
            if (this.f12461a != null) {
                return new C2954p(this);
            }
            throw new IllegalStateException("url == null");
        }

        /* renamed from: h */
        public C2956b m771h(String str, String str2) {
            this.f12463c.m887i(str, str2);
            return this;
        }

        /* renamed from: i */
        public C2956b m770i(String str, AbstractC2957q abstractC2957q) {
            if (str == null || str.length() == 0) {
                throw new IllegalArgumentException("method == null || method.length() == 0");
            }
            if (abstractC2957q != null && !C2932h.m950b(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            } else if (abstractC2957q != null || !C2932h.m949c(str)) {
                this.f12462b = str;
                this.f12464d = abstractC2957q;
                return this;
            } else {
                throw new IllegalArgumentException("method " + str + " must have a request body.");
            }
        }

        /* renamed from: j */
        public C2956b m769j(String str) {
            this.f12463c.m888h(str);
            return this;
        }

        /* renamed from: k */
        public C2956b m768k(C2946l c2946l) {
            if (c2946l != null) {
                this.f12461a = c2946l;
                return this;
            }
            throw new IllegalArgumentException("url == null");
        }

        /* renamed from: l */
        public C2956b m767l(URL url) {
            if (url != null) {
                C2946l m865p = C2946l.m865p(url);
                if (m865p != null) {
                    m768k(m865p);
                    return this;
                }
                throw new IllegalArgumentException("unexpected url: " + url);
            }
            throw new IllegalArgumentException("url == null");
        }
    }

    private C2954p(C2956b c2956b) {
        this.f12453a = c2956b.f12461a;
        this.f12454b = c2956b.f12462b;
        this.f12455c = c2956b.f12463c.m891e();
        this.f12456d = c2956b.f12464d;
        this.f12457e = c2956b.f12465e != null ? c2956b.f12465e : this;
    }

    /* renamed from: f */
    public AbstractC2957q m789f() {
        return this.f12456d;
    }

    /* renamed from: g */
    public C2855d m788g() {
        C2855d c2855d = this.f12460h;
        if (c2855d == null) {
            c2855d = C2855d.m1305k(this.f12455c);
            this.f12460h = c2855d;
        }
        return c2855d;
    }

    /* renamed from: h */
    public String m787h(String str) {
        return this.f12455c.m902a(str);
    }

    /* renamed from: i */
    public C2943k m786i() {
        return this.f12455c;
    }

    /* renamed from: j */
    public C2946l m785j() {
        return this.f12453a;
    }

    /* renamed from: k */
    public boolean m784k() {
        return this.f12453a.m863r();
    }

    /* renamed from: l */
    public String m783l() {
        return this.f12454b;
    }

    /* renamed from: m */
    public C2956b m782m() {
        return new C2956b();
    }

    /* renamed from: n */
    public URI m781n() {
        try {
            URI uri = this.f12459g;
            if (uri == null) {
                uri = this.f12453a.m882E();
                this.f12459g = uri;
            }
            return uri;
        } catch (IllegalStateException e) {
            throw new IOException(e.getMessage());
        }
    }

    /* renamed from: o */
    public URL m780o() {
        URL url = this.f12458f;
        if (url == null) {
            url = this.f12453a.m881F();
            this.f12458f = url;
        }
        return url;
    }

    /* renamed from: p */
    public String m779p() {
        return this.f12453a.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(this.f12454b);
        sb.append(", url=");
        sb.append(this.f12453a);
        sb.append(", tag=");
        Object obj = this.f12457e;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }
}
