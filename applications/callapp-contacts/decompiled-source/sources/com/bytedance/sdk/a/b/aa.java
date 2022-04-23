package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.b.r;
import java.io.Closeable;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/aa.class */
public final class aa implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    final y f8061a;

    /* renamed from: b  reason: collision with root package name */
    final w f8062b;

    /* renamed from: c  reason: collision with root package name */
    final int f8063c;

    /* renamed from: d  reason: collision with root package name */
    final String f8064d;
    final q e;
    final r f;
    final ab g;
    final aa h;
    final aa i;
    final aa j;
    final long k;
    final long l;
    private volatile d m;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/aa$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        y f8065a;

        /* renamed from: b  reason: collision with root package name */
        w f8066b;

        /* renamed from: c  reason: collision with root package name */
        int f8067c;

        /* renamed from: d  reason: collision with root package name */
        String f8068d;
        q e;
        r.a f;
        ab g;
        aa h;
        aa i;
        aa j;
        long k;
        long l;

        public a() {
            this.f8067c = -1;
            this.f = new r.a();
        }

        a(aa aaVar) {
            this.f8067c = -1;
            this.f8065a = aaVar.f8061a;
            this.f8066b = aaVar.f8062b;
            this.f8067c = aaVar.f8063c;
            this.f8068d = aaVar.f8064d;
            this.e = aaVar.e;
            this.f = aaVar.f.c();
            this.g = aaVar.g;
            this.h = aaVar.h;
            this.i = aaVar.i;
            this.j = aaVar.j;
            this.k = aaVar.k;
            this.l = aaVar.l;
        }

        private void a(String str, aa aaVar) {
            if (aaVar.g != null) {
                throw new IllegalArgumentException(str + ".body != null");
            } else if (aaVar.h != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            } else if (aaVar.i != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            } else if (aaVar.j != null) {
                throw new IllegalArgumentException(str + ".priorResponse != null");
            }
        }

        private void d(aa aaVar) {
            if (aaVar.g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public a a(int i) {
            this.f8067c = i;
            return this;
        }

        public a a(long j) {
            this.k = j;
            return this;
        }

        public a a(aa aaVar) {
            if (aaVar != null) {
                a("networkResponse", aaVar);
            }
            this.h = aaVar;
            return this;
        }

        public a a(ab abVar) {
            this.g = abVar;
            return this;
        }

        public a a(q qVar) {
            this.e = qVar;
            return this;
        }

        public a a(r rVar) {
            this.f = rVar.c();
            return this;
        }

        public a a(w wVar) {
            this.f8066b = wVar;
            return this;
        }

        public a a(y yVar) {
            this.f8065a = yVar;
            return this;
        }

        public a a(String str) {
            this.f8068d = str;
            return this;
        }

        public a a(String str, String str2) {
            this.f.a(str, str2);
            return this;
        }

        public aa a() {
            if (this.f8065a == null) {
                throw new IllegalStateException("request == null");
            } else if (this.f8066b == null) {
                throw new IllegalStateException("protocol == null");
            } else if (this.f8067c < 0) {
                throw new IllegalStateException("code < 0: " + this.f8067c);
            } else if (this.f8068d != null) {
                return new aa(this);
            } else {
                throw new IllegalStateException("message == null");
            }
        }

        public a b(long j) {
            this.l = j;
            return this;
        }

        public a b(aa aaVar) {
            if (aaVar != null) {
                a("cacheResponse", aaVar);
            }
            this.i = aaVar;
            return this;
        }

        public a c(aa aaVar) {
            if (aaVar != null) {
                d(aaVar);
            }
            this.j = aaVar;
            return this;
        }
    }

    aa(a aVar) {
        this.f8061a = aVar.f8065a;
        this.f8062b = aVar.f8066b;
        this.f8063c = aVar.f8067c;
        this.f8064d = aVar.f8068d;
        this.e = aVar.e;
        this.f = aVar.f.a();
        this.g = aVar.g;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.j;
        this.k = aVar.k;
        this.l = aVar.l;
    }

    public final y a() {
        return this.f8061a;
    }

    public final String a(String str) {
        return a(str, null);
    }

    public final String a(String str, String str2) {
        String a2 = this.f.a(str);
        return a2 != null ? a2 : str2;
    }

    public final w b() {
        return this.f8062b;
    }

    public final int c() {
        return this.f8063c;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ab abVar = this.g;
        if (abVar != null) {
            abVar.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed");
    }

    public final boolean d() {
        int i = this.f8063c;
        return i >= 200 && i < 300;
    }

    public final String e() {
        return this.f8064d;
    }

    public final q f() {
        return this.e;
    }

    public final r g() {
        return this.f;
    }

    public final ab h() {
        return this.g;
    }

    public final a i() {
        return new a(this);
    }

    public final aa j() {
        return this.j;
    }

    public final d k() {
        d dVar = this.m;
        if (dVar != null) {
            return dVar;
        }
        d a2 = d.a(this.f);
        this.m = a2;
        return a2;
    }

    public final long l() {
        return this.k;
    }

    public final long m() {
        return this.l;
    }

    public final String toString() {
        return "Response{protocol=" + this.f8062b + ", code=" + this.f8063c + ", message=" + this.f8064d + ", url=" + this.f8061a.a() + '}';
    }
}
