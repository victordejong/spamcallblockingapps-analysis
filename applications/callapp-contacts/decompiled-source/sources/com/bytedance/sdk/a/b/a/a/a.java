package com.bytedance.sdk.a.b.a.a;

import com.bytedance.sdk.a.a.c;
import com.bytedance.sdk.a.a.d;
import com.bytedance.sdk.a.a.e;
import com.bytedance.sdk.a.a.l;
import com.bytedance.sdk.a.a.r;
import com.bytedance.sdk.a.a.s;
import com.bytedance.sdk.a.b.a.a.c;
import com.bytedance.sdk.a.b.a.c.f;
import com.bytedance.sdk.a.b.a.c.h;
import com.bytedance.sdk.a.b.aa;
import com.bytedance.sdk.a.b.ab;
import com.bytedance.sdk.a.b.r;
import com.bytedance.sdk.a.b.t;
import com.bytedance.sdk.a.b.w;
import com.bytedance.sdk.a.b.y;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/a/a.class */
public final class a implements t {

    /* renamed from: a  reason: collision with root package name */
    final e f7831a;

    public a(e eVar) {
        this.f7831a = eVar;
    }

    private aa a(final b bVar, aa aaVar) throws IOException {
        r a2;
        if (!(bVar == null || (a2 = bVar.a()) == null)) {
            final e d2 = aaVar.h().d();
            final d a3 = l.a(a2);
            return aaVar.i().a(new h(aaVar.a("Content-Type"), aaVar.h().b(), l.a(new s() { // from class: com.bytedance.sdk.a.b.a.a.a.1

                /* renamed from: a  reason: collision with root package name */
                boolean f7832a;

                @Override // com.bytedance.sdk.a.a.s
                public long a(c cVar, long j) throws IOException {
                    try {
                        long a4 = d2.a(cVar, j);
                        if (a4 != -1) {
                            cVar.a(a3.c(), cVar.b() - a4, a4);
                            a3.u();
                            return a4;
                        } else if (this.f7832a) {
                            return -1L;
                        } else {
                            this.f7832a = true;
                            a3.close();
                            return -1L;
                        }
                    } catch (IOException e) {
                        if (!this.f7832a) {
                            this.f7832a = true;
                            bVar.b();
                        }
                        throw e;
                    }
                }

                @Override // com.bytedance.sdk.a.a.s
                public com.bytedance.sdk.a.a.t a() {
                    return d2.a();
                }

                @Override // com.bytedance.sdk.a.a.s, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    if (!this.f7832a && !com.bytedance.sdk.a.b.a.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                        this.f7832a = true;
                        bVar.b();
                    }
                    d2.close();
                }
            }))).a();
        }
        return aaVar;
    }

    private static aa a(aa aaVar) {
        aa aaVar2 = aaVar;
        if (aaVar != null) {
            aaVar2 = aaVar;
            if (aaVar.h() != null) {
                aaVar2 = aaVar.i().a((ab) null).a();
            }
        }
        return aaVar2;
    }

    private static com.bytedance.sdk.a.b.r a(com.bytedance.sdk.a.b.r rVar, com.bytedance.sdk.a.b.r rVar2) {
        r.a aVar = new r.a();
        int a2 = rVar.a();
        for (int i = 0; i < a2; i++) {
            String a3 = rVar.a(i);
            String b2 = rVar.b(i);
            if ((!"Warning".equalsIgnoreCase(a3) || !b2.startsWith("1")) && (!a(a3) || rVar2.a(a3) == null)) {
                com.bytedance.sdk.a.b.a.a.f7830a.a(aVar, a3, b2);
            }
        }
        int a4 = rVar2.a();
        for (int i2 = 0; i2 < a4; i2++) {
            String a5 = rVar2.a(i2);
            if (!"Content-Length".equalsIgnoreCase(a5) && a(a5)) {
                com.bytedance.sdk.a.b.a.a.f7830a.a(aVar, a5, rVar2.b(i2));
            }
        }
        return aVar.a();
    }

    static boolean a(String str) {
        return !"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str);
    }

    @Override // com.bytedance.sdk.a.b.t
    public final aa a(t.a aVar) throws IOException {
        e eVar = this.f7831a;
        aa a2 = eVar != null ? eVar.a(aVar.a()) : null;
        c a3 = new c.a(System.currentTimeMillis(), aVar.a(), a2).a();
        y yVar = a3.f7836a;
        aa aaVar = a3.f7837b;
        e eVar2 = this.f7831a;
        if (eVar2 != null) {
            eVar2.a(a3);
        }
        if (a2 != null && aaVar == null) {
            com.bytedance.sdk.a.b.a.c.a(a2.h());
        }
        if (yVar == null && aaVar == null) {
            return new aa.a().a(aVar.a()).a(w.HTTP_1_1).a(504).a("Unsatisfiable Request (only-if-cached)").a(com.bytedance.sdk.a.b.a.c.f7880c).a(-1L).b(System.currentTimeMillis()).a();
        }
        if (yVar == null) {
            return aaVar.i().b(a(aaVar)).a();
        }
        try {
            aa a4 = aVar.a(yVar);
            if (a4 == null && a2 != null) {
            }
            if (aaVar != null) {
                if (a4.c() == 304) {
                    aa a5 = aaVar.i().a(a(aaVar.g(), a4.g())).a(a4.l()).b(a4.m()).b(a(aaVar)).a(a(a4)).a();
                    a4.h().close();
                    this.f7831a.a();
                    this.f7831a.a(aaVar, a5);
                    return a5;
                }
                com.bytedance.sdk.a.b.a.c.a(aaVar.h());
            }
            aa a6 = a4.i().b(a(aaVar)).a(a(a4)).a();
            if (this.f7831a != null) {
                if (com.bytedance.sdk.a.b.a.c.e.b(a6) && c.a(a6, yVar)) {
                    return a(this.f7831a.a(a6), a6);
                }
                if (f.a(yVar.b())) {
                    try {
                        this.f7831a.b(yVar);
                    } catch (IOException e) {
                    }
                }
            }
            return a6;
        } finally {
            if (a2 != null) {
                com.bytedance.sdk.a.b.a.c.a(a2.h());
            }
        }
    }
}
