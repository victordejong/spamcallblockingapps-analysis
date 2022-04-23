package com.bytedance.sdk.a.b.a.e;

import com.bytedance.sdk.a.a.h;
import com.bytedance.sdk.a.a.l;
import com.bytedance.sdk.a.a.s;
import com.bytedance.sdk.a.b.a.b.g;
import com.bytedance.sdk.a.b.a.c.c;
import com.bytedance.sdk.a.b.a.c.e;
import com.bytedance.sdk.a.b.a.c.i;
import com.bytedance.sdk.a.b.a.c.k;
import com.bytedance.sdk.a.b.aa;
import com.bytedance.sdk.a.b.ab;
import com.bytedance.sdk.a.b.r;
import com.bytedance.sdk.a.b.t;
import com.bytedance.sdk.a.b.v;
import com.bytedance.sdk.a.b.w;
import com.bytedance.sdk.a.b.y;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/f.class */
public final class f implements c {

    /* renamed from: b  reason: collision with root package name */
    private static final com.bytedance.sdk.a.a.f f7942b;

    /* renamed from: c  reason: collision with root package name */
    private static final com.bytedance.sdk.a.a.f f7943c;

    /* renamed from: d  reason: collision with root package name */
    private static final com.bytedance.sdk.a.a.f f7944d;
    private static final com.bytedance.sdk.a.a.f e;
    private static final com.bytedance.sdk.a.a.f f;
    private static final com.bytedance.sdk.a.a.f g;
    private static final com.bytedance.sdk.a.a.f h;
    private static final com.bytedance.sdk.a.a.f i;
    private static final List<com.bytedance.sdk.a.a.f> j;
    private static final List<com.bytedance.sdk.a.a.f> k;

    /* renamed from: a  reason: collision with root package name */
    final g f7945a;
    private final v l;
    private final t.a m;
    private final g n;
    private i o;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/f$a.class */
    class a extends h {

        /* renamed from: a  reason: collision with root package name */
        boolean f7946a = false;

        /* renamed from: b  reason: collision with root package name */
        long f7947b = 0;

        a(s sVar) {
            super(sVar);
        }

        private void a(IOException iOException) {
            if (!this.f7946a) {
                this.f7946a = true;
                f.this.f7945a.a(false, (c) f.this, this.f7947b, iOException);
            }
        }

        @Override // com.bytedance.sdk.a.a.h, com.bytedance.sdk.a.a.s
        public long a(com.bytedance.sdk.a.a.c cVar, long j) throws IOException {
            try {
                long a2 = b().a(cVar, j);
                if (a2 > 0) {
                    this.f7947b += a2;
                }
                return a2;
            } catch (IOException e) {
                a(e);
                throw e;
            }
        }

        @Override // com.bytedance.sdk.a.a.h, com.bytedance.sdk.a.a.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            a(null);
        }
    }

    static {
        com.bytedance.sdk.a.a.f a2 = com.bytedance.sdk.a.a.f.a("connection");
        f7942b = a2;
        com.bytedance.sdk.a.a.f a3 = com.bytedance.sdk.a.a.f.a("host");
        f7943c = a3;
        com.bytedance.sdk.a.a.f a4 = com.bytedance.sdk.a.a.f.a("keep-alive");
        f7944d = a4;
        com.bytedance.sdk.a.a.f a5 = com.bytedance.sdk.a.a.f.a("proxy-connection");
        e = a5;
        com.bytedance.sdk.a.a.f a6 = com.bytedance.sdk.a.a.f.a("transfer-encoding");
        f = a6;
        com.bytedance.sdk.a.a.f a7 = com.bytedance.sdk.a.a.f.a("te");
        g = a7;
        com.bytedance.sdk.a.a.f a8 = com.bytedance.sdk.a.a.f.a("encoding");
        h = a8;
        com.bytedance.sdk.a.a.f a9 = com.bytedance.sdk.a.a.f.a("upgrade");
        i = a9;
        j = com.bytedance.sdk.a.b.a.c.a(a2, a3, a4, a5, a7, a6, a8, a9, c.f7926c, c.f7927d, c.e, c.f);
        k = com.bytedance.sdk.a.b.a.c.a(a2, a3, a4, a5, a7, a6, a8, a9);
    }

    public f(v vVar, t.a aVar, g gVar, g gVar2) {
        this.l = vVar;
        this.m = aVar;
        this.f7945a = gVar;
        this.n = gVar2;
    }

    public static aa.a a(List<c> list) throws IOException {
        r.a aVar = new r.a();
        int size = list.size();
        k kVar = null;
        for (int i2 = 0; i2 < size; i2++) {
            c cVar = list.get(i2);
            if (cVar == null) {
                aVar = aVar;
                kVar = kVar;
                if (kVar != null) {
                    aVar = aVar;
                    kVar = kVar;
                    if (kVar.f7903b == 100) {
                        aVar = new r.a();
                        kVar = null;
                    }
                }
            } else {
                com.bytedance.sdk.a.a.f fVar = cVar.g;
                String a2 = cVar.h.a();
                if (fVar.equals(c.f7925b)) {
                    kVar = k.a("HTTP/1.1 ".concat(String.valueOf(a2)));
                    aVar = aVar;
                } else {
                    aVar = aVar;
                    kVar = kVar;
                    if (!k.contains(fVar)) {
                        com.bytedance.sdk.a.b.a.a.f7830a.a(aVar, fVar.a(), a2);
                        kVar = kVar;
                        aVar = aVar;
                    }
                }
            }
        }
        if (kVar != null) {
            return new aa.a().a(w.HTTP_2).a(kVar.f7903b).a(kVar.f7904c).a(aVar.a());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    public static List<c> b(y yVar) {
        r c2 = yVar.c();
        ArrayList arrayList = new ArrayList(c2.a() + 4);
        arrayList.add(new c(c.f7926c, yVar.b()));
        arrayList.add(new c(c.f7927d, i.a(yVar.a())));
        String a2 = yVar.a("Host");
        if (a2 != null) {
            arrayList.add(new c(c.f, a2));
        }
        arrayList.add(new c(c.e, yVar.a().b()));
        int a3 = c2.a();
        for (int i2 = 0; i2 < a3; i2++) {
            com.bytedance.sdk.a.a.f a4 = com.bytedance.sdk.a.a.f.a(c2.a(i2).toLowerCase(Locale.US));
            if (!j.contains(a4)) {
                arrayList.add(new c(a4, c2.b(i2)));
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.a.b.a.c.c
    public final com.bytedance.sdk.a.a.r a(y yVar, long j2) {
        return this.o.h();
    }

    @Override // com.bytedance.sdk.a.b.a.c.c
    public final aa.a a(boolean z) throws IOException {
        aa.a a2 = a(this.o.d());
        if (!z || com.bytedance.sdk.a.b.a.a.f7830a.a(a2) != 100) {
            return a2;
        }
        return null;
    }

    @Override // com.bytedance.sdk.a.b.a.c.c
    public final ab a(aa aaVar) throws IOException {
        this.f7945a.f7876c.f(this.f7945a.f7875b);
        return new com.bytedance.sdk.a.b.a.c.h(aaVar.a("Content-Type"), e.a(aaVar), l.a(new a(this.o.g())));
    }

    @Override // com.bytedance.sdk.a.b.a.c.c
    public final void a() throws IOException {
        this.n.b();
    }

    @Override // com.bytedance.sdk.a.b.a.c.c
    public final void a(y yVar) throws IOException {
        if (this.o == null) {
            i a2 = this.n.a(b(yVar), yVar.d() != null);
            this.o = a2;
            a2.e().a(this.m.c(), TimeUnit.MILLISECONDS);
            this.o.f().a(this.m.d(), TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.bytedance.sdk.a.b.a.c.c
    public final void b() throws IOException {
        this.o.h().close();
    }
}
