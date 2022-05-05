package com.b.a;

import com.b.a.a.a.j;
import com.b.a.p;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/b/a/w.class */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public final u f3350a;

    /* renamed from: b  reason: collision with root package name */
    public final t f3351b;
    public final int c;
    public final String d;
    public final o e;
    public final p f;
    public final x g;
    w h;
    w i;
    final w j;
    private volatile d k;

    /* loaded from: classes-dex2jar.jar:com/b/a/w$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public u f3352a;

        /* renamed from: b  reason: collision with root package name */
        public t f3353b;
        public int c;
        public String d;
        public o e;
        p.a f;
        public x g;
        w h;
        w i;
        w j;

        public a() {
            this.c = -1;
            this.f = new p.a();
        }

        private a(w wVar) {
            this.c = -1;
            this.f3352a = wVar.f3350a;
            this.f3353b = wVar.f3351b;
            this.c = wVar.c;
            this.d = wVar.d;
            this.e = wVar.e;
            this.f = wVar.f.a();
            this.g = wVar.g;
            this.h = wVar.h;
            this.i = wVar.i;
            this.j = wVar.j;
        }

        /* synthetic */ a(w wVar, byte b2) {
            this(wVar);
        }

        private static void a(String str, w wVar) {
            if (wVar.g != null) {
                throw new IllegalArgumentException(str + ".body != null");
            } else if (wVar.h != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            } else if (wVar.i != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            } else if (wVar.j != null) {
                throw new IllegalArgumentException(str + ".priorResponse != null");
            }
        }

        public final a a(p pVar) {
            this.f = pVar.a();
            return this;
        }

        public final a a(w wVar) {
            if (wVar != null) {
                a("networkResponse", wVar);
            }
            this.h = wVar;
            return this;
        }

        public final a a(String str, String str2) {
            this.f.c(str, str2);
            return this;
        }

        public final w a() {
            if (this.f3352a == null) {
                throw new IllegalStateException("request == null");
            } else if (this.f3353b == null) {
                throw new IllegalStateException("protocol == null");
            } else if (this.c >= 0) {
                return new w(this, (byte) 0);
            } else {
                throw new IllegalStateException("code < 0: " + this.c);
            }
        }

        public final a b(w wVar) {
            if (wVar != null) {
                a("cacheResponse", wVar);
            }
            this.i = wVar;
            return this;
        }

        public final a b(String str, String str2) {
            this.f.a(str, str2);
            return this;
        }

        public final a c(w wVar) {
            if (wVar == null || wVar.g == null) {
                this.j = wVar;
                return this;
            }
            throw new IllegalArgumentException("priorResponse.body != null");
        }
    }

    private w(a aVar) {
        this.f3350a = aVar.f3352a;
        this.f3351b = aVar.f3353b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f.a();
        this.g = aVar.g;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.j;
    }

    /* synthetic */ w(a aVar, byte b2) {
        this(aVar);
    }

    public final a a() {
        return new a(this, (byte) 0);
    }

    public final String a(String str) {
        String a2 = this.f.a(str);
        if (a2 == null) {
            a2 = null;
        }
        return a2;
    }

    public final List<g> b() {
        List<g> emptyList;
        String str;
        if (this.c == 401) {
            str = "WWW-Authenticate";
        } else if (this.c == 407) {
            str = "Proxy-Authenticate";
        } else {
            emptyList = Collections.emptyList();
            return emptyList;
        }
        emptyList = j.a(this.f, str);
        return emptyList;
    }

    public final d c() {
        d dVar = this.k;
        if (dVar == null) {
            dVar = d.a(this.f);
            this.k = dVar;
        }
        return dVar;
    }

    public final String toString() {
        return "Response{protocol=" + this.f3351b + ", code=" + this.c + ", message=" + this.d + ", url=" + this.f3350a.f3344a + '}';
    }
}
