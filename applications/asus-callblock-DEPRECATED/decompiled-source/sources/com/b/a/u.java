package com.b.a;

import com.b.a.a.a.h;
import com.b.a.a.f;
import com.b.a.p;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/b/a/u.class */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public final String f3344a;

    /* renamed from: b  reason: collision with root package name */
    public final String f3345b;
    public final p c;
    public final v d;
    final Object e;
    volatile URL f;
    private volatile URI g;
    private volatile d h;

    /* loaded from: classes-dex2jar.jar:com/b/a/u$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f3346a;

        /* renamed from: b  reason: collision with root package name */
        URL f3347b;
        String c;
        public p.a d;
        v e;
        Object f;

        public a() {
            this.c = "GET";
            this.d = new p.a();
        }

        private a(u uVar) {
            this.f3346a = uVar.f3344a;
            this.f3347b = uVar.f;
            this.c = uVar.f3345b;
            this.e = uVar.d;
            this.f = uVar.e;
            this.d = uVar.c.a();
        }

        /* synthetic */ a(u uVar, byte b2) {
            this(uVar);
        }

        public final a a(String str) {
            if (str == null) {
                throw new IllegalArgumentException("url == null");
            }
            this.f3346a = str;
            this.f3347b = null;
            return this;
        }

        public final a a(String str, v vVar) {
            if (str == null || str.length() == 0) {
                throw new IllegalArgumentException("method == null || method.length() == 0");
            } else if (vVar == null || h.a(str)) {
                v vVar2 = vVar;
                if (vVar == null) {
                    vVar2 = vVar;
                    if (h.a(str)) {
                        vVar2 = v.a(null, com.b.a.a.h.f3301a);
                    }
                }
                this.c = str;
                this.e = vVar2;
                return this;
            } else {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            }
        }

        public final a a(String str, String str2) {
            this.d.c(str, str2);
            return this;
        }

        public final a a(URL url) {
            if (url == null) {
                throw new IllegalArgumentException("url == null");
            }
            this.f3347b = url;
            this.f3346a = url.toString();
            return this;
        }

        public final u a() {
            if (this.f3346a != null) {
                return new u(this, (byte) 0);
            }
            throw new IllegalStateException("url == null");
        }

        public final a b(String str) {
            this.d.a(str);
            return this;
        }

        public final a b(String str, String str2) {
            this.d.a(str, str2);
            return this;
        }
    }

    private u(a aVar) {
        this.f3344a = aVar.f3346a;
        this.f3345b = aVar.c;
        this.c = aVar.d.a();
        this.d = aVar.e;
        this.e = aVar.f != null ? aVar.f : this;
        this.f = aVar.f3347b;
    }

    /* synthetic */ u(a aVar, byte b2) {
        this(aVar);
    }

    public final String a(String str) {
        return this.c.a(str);
    }

    public final URL a() {
        try {
            URL url = this.f;
            if (url == null) {
                url = new URL(this.f3344a);
                this.f = url;
            }
            return url;
        } catch (MalformedURLException e) {
            throw new RuntimeException("Malformed URL: " + this.f3344a, e);
        }
    }

    public final URI b() {
        try {
            URI uri = this.g;
            if (uri == null) {
                f.a();
                uri = f.a(a());
                this.g = uri;
            }
            return uri;
        } catch (URISyntaxException e) {
            throw new IOException(e.getMessage());
        }
    }

    public final a c() {
        return new a(this, (byte) 0);
    }

    public final d d() {
        d dVar = this.h;
        if (dVar == null) {
            dVar = d.a(this.c);
            this.h = dVar;
        }
        return dVar;
    }

    public final boolean e() {
        return a().getProtocol().equals("https");
    }

    public final String toString() {
        return "Request{method=" + this.f3345b + ", url=" + this.f3344a + ", tag=" + (this.e != this ? this.e : null) + '}';
    }
}
