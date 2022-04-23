package p599h.p600d0.p603g;

import java.io.IOException;
import java.net.ProtocolException;
import p599h.AbstractC10238t;
import p599h.C10091a0;
import p599h.C10250y;
import p599h.p600d0.C10109c;
import p599h.p600d0.p602f.C10129c;
import p599h.p600d0.p602f.C10133f;
import p610i.AbstractC10263d;
import p610i.AbstractC10265f;
import p610i.AbstractC10280p;
import p610i.C10260c;
import p610i.C10270k;
/* renamed from: h.d0.g.b */
/* loaded from: classes2-dex2jar.jar:h/d0/g/b.class */
public final class C10136b implements AbstractC10238t {

    /* renamed from: a */
    public final boolean f37439a;

    /* renamed from: h.d0.g.b$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/g/b$a.class */
    public static final class C10137a extends AbstractC10265f {

        /* renamed from: b */
        public long f37440b;

        public C10137a(AbstractC10280p pVar) {
            super(pVar);
        }

        @Override // p610i.AbstractC10265f, p610i.AbstractC10280p
        /* renamed from: a */
        public void mo706a(C10260c cVar, long j) throws IOException {
            super.mo706a(cVar, j);
            this.f37440b += j;
        }
    }

    public C10136b(boolean z) {
        this.f37439a = z;
    }

    @Override // p599h.AbstractC10238t
    /* renamed from: a */
    public C10091a0 mo902a(AbstractC10238t.AbstractC10239a aVar) throws IOException {
        C10091a0 a0Var;
        C10143g gVar = (C10143g) aVar;
        AbstractC10138c g = gVar.m1304g();
        C10133f h = gVar.m1303h();
        C10129c cVar = (C10129c) gVar.m1306e();
        C10250y i = gVar.mo897i();
        long currentTimeMillis = System.currentTimeMillis();
        gVar.m1305f().m984d(gVar.m1307d());
        g.mo1240a(i);
        gVar.m1305f().m996a(gVar.m1307d(), i);
        C10091a0.C10092a aVar2 = null;
        C10091a0.C10092a aVar3 = null;
        if (C10142f.m1312b(i.m815e())) {
            aVar3 = null;
            if (i.m821a() != null) {
                if ("100-continue".equalsIgnoreCase(i.m820a("Expect"))) {
                    g.mo1237b();
                    gVar.m1305f().m982f(gVar.m1307d());
                    aVar2 = g.mo1238a(true);
                }
                if (aVar2 == null) {
                    gVar.m1305f().m985c(gVar.m1307d());
                    C10137a aVar4 = new C10137a(g.mo1239a(i, i.m821a().mo799a()));
                    AbstractC10263d a = C10270k.m754a(aVar4);
                    i.m821a().mo798a(a);
                    a.close();
                    gVar.m1305f().m1000a(gVar.m1307d(), aVar4.f37440b);
                    aVar3 = aVar2;
                } else {
                    aVar3 = aVar2;
                    if (!cVar.m1366d()) {
                        h.m1336e();
                        aVar3 = aVar2;
                    }
                }
            }
        }
        g.mo1243a();
        C10091a0.C10092a aVar5 = aVar3;
        if (aVar3 == null) {
            gVar.m1305f().m982f(gVar.m1307d());
            aVar5 = g.mo1238a(false);
        }
        aVar5.m1519a(i);
        aVar5.m1521a(h.m1338c().m1367c());
        aVar5.m1514b(currentTimeMillis);
        aVar5.m1524a(System.currentTimeMillis());
        C10091a0 a2 = aVar5.m1526a();
        int d = a2.m1538d();
        int i2 = d;
        if (d == 100) {
            C10091a0.C10092a a3 = g.mo1238a(false);
            a3.m1519a(i);
            a3.m1521a(h.m1338c().m1367c());
            a3.m1514b(currentTimeMillis);
            a3.m1524a(System.currentTimeMillis());
            a2 = a3.m1526a();
            i2 = a2.m1538d();
        }
        gVar.m1305f().m999a(gVar.m1307d(), a2);
        if (!this.f37439a || i2 != 101) {
            C10091a0.C10092a j = a2.m1532j();
            j.m1522a(g.mo1242a(a2));
            a0Var = j.m1526a();
        } else {
            C10091a0.C10092a j2 = a2.m1532j();
            j2.m1522a(C10109c.f37316c);
            a0Var = j2.m1526a();
        }
        if ("close".equalsIgnoreCase(a0Var.m1528n().m820a("Connection")) || "close".equalsIgnoreCase(a0Var.m1542a("Connection"))) {
            h.m1336e();
        }
        if ((i2 != 204 && i2 != 205) || a0Var.m1543a().mo1302b() <= 0) {
            return a0Var;
        }
        throw new ProtocolException("HTTP " + i2 + " had non-zero Content-Length: " + a0Var.m1543a().mo1302b());
    }
}
