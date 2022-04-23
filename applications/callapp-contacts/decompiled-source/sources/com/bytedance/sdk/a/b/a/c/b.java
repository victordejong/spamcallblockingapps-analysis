package com.bytedance.sdk.a.b.a.c;

import com.bytedance.sdk.a.a.c;
import com.bytedance.sdk.a.a.d;
import com.bytedance.sdk.a.a.g;
import com.bytedance.sdk.a.a.l;
import com.bytedance.sdk.a.a.r;
import com.bytedance.sdk.a.b.aa;
import com.bytedance.sdk.a.b.t;
import com.bytedance.sdk.a.b.y;
import java.io.IOException;
import java.net.ProtocolException;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/b.class */
public final class b implements t {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f7885a;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/b$a.class */
    static final class a extends g {

        /* renamed from: a  reason: collision with root package name */
        long f7886a;

        a(r rVar) {
            super(rVar);
        }

        @Override // com.bytedance.sdk.a.a.g, com.bytedance.sdk.a.a.r
        public final void a_(c cVar, long j) throws IOException {
            super.a_(cVar, j);
            this.f7886a += j;
        }
    }

    public b(boolean z) {
        this.f7885a = z;
    }

    @Override // com.bytedance.sdk.a.b.t
    public final aa a(t.a aVar) throws IOException {
        g gVar = (g) aVar;
        c g = gVar.g();
        com.bytedance.sdk.a.b.a.b.g f = gVar.f();
        com.bytedance.sdk.a.b.a.b.c cVar = (com.bytedance.sdk.a.b.a.b.c) gVar.e();
        y a2 = gVar.a();
        long currentTimeMillis = System.currentTimeMillis();
        gVar.i().c(gVar.h());
        g.a(a2);
        gVar.i().a(gVar.h(), a2);
        aa.a aVar2 = null;
        aa.a aVar3 = null;
        if (f.c(a2.b())) {
            aVar3 = null;
            if (a2.d() != null) {
                if ("100-continue".equalsIgnoreCase(a2.a("Expect"))) {
                    g.a();
                    gVar.i().e(gVar.h());
                    aVar2 = g.a(true);
                }
                if (aVar2 == null) {
                    gVar.i().d(gVar.h());
                    a aVar4 = new a(g.a(a2, a2.d().b()));
                    d a3 = l.a(aVar4);
                    a2.d().a(a3);
                    a3.close();
                    gVar.i().a(gVar.h(), aVar4.f7886a);
                    aVar3 = aVar2;
                } else {
                    aVar3 = aVar2;
                    if (!cVar.d()) {
                        f.d();
                        aVar3 = aVar2;
                    }
                }
            }
        }
        g.b();
        aa.a aVar5 = aVar3;
        if (aVar3 == null) {
            gVar.i().e(gVar.h());
            aVar5 = g.a(false);
        }
        aa a4 = aVar5.a(a2).a(f.b().c()).a(currentTimeMillis).b(System.currentTimeMillis()).a();
        gVar.i().a(gVar.h(), a4);
        int c2 = a4.c();
        aa a5 = (!this.f7885a || c2 != 101) ? a4.i().a(g.a(a4)).a() : a4.i().a(com.bytedance.sdk.a.b.a.c.f7880c).a();
        if (EventConstants.CLOSE.equalsIgnoreCase(a5.a().a("Connection")) || EventConstants.CLOSE.equalsIgnoreCase(a5.a("Connection"))) {
            f.d();
        }
        if ((c2 != 204 && c2 != 205) || a5.h().b() <= 0) {
            return a5;
        }
        throw new ProtocolException("HTTP " + c2 + " had non-zero Content-Length: " + a5.h().b());
    }
}
