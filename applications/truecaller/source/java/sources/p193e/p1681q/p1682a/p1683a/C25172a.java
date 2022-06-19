package p193e.p1681q.p1682a.p1683a;

import e.q.a.d.b;
import e.q.a.d.c;
import java.util.Arrays;
import java.util.Objects;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25173a;
import p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25174b;
import p193e.p1681q.p1682a.p1683a.p1684b.AbstractC25175c;
import p193e.p1681q.p1690c.p1691a.C25193b;
import p193e.p194a.p437c.p552i.p553a.C10271a;
import p193e.p194a.p437c.p580r.p582e.p583a.C10532b;
/* renamed from: e.q.a.a.a */
/* loaded from: classes16-dex2jar.jar:e/q/a/a/a.class */
public class C25172a {

    /* renamed from: a */
    public C10271a f70426a;

    /* renamed from: b */
    public AbstractC25173a f70427b;

    /* renamed from: c */
    public AbstractC25174b f70428c;

    /* renamed from: d */
    public JSONObject f70429d = null;

    public C25172a(C10271a c10271a, AbstractC25173a abstractC25173a, AbstractC25174b abstractC25174b, AbstractC25175c abstractC25175c, JSONObject jSONObject) {
        this.f70427b = abstractC25173a;
        this.f70428c = abstractC25174b;
        this.f70426a = c10271a;
    }

    /* renamed from: a */
    public void m4138a(c cVar, c cVar2) throws C25193b {
        String c = cVar.c();
        String c2 = cVar2.c();
        if (!cVar.h().equals(cVar2.h())) {
            StringBuilder m8728C = C22128a.m8728C("The addresses of the cards do not match. Please check and try again -");
            m8728C.append(cVar.e());
            m8728C.append(" and ");
            m8728C.append(cVar2.e());
            throw new C25193b(m8728C.toString());
        } else if (!cVar.d().equals(cVar2.d())) {
            StringBuilder m8728C2 = C22128a.m8728C("The account types do not match. Please check and try again - ");
            m8728C2.append(cVar.d());
            m8728C2.append(" and ");
            m8728C2.append(cVar2.d());
            throw new C25193b(m8728C2.toString());
        } else {
            b mo4128c = this.f70428c.mo4128c(Long.valueOf(cVar.g()));
            if (mo4128c != null && mo4128c.b().longValue() == cVar.g() && mo4128c.c().longValue() == cVar2.g()) {
                return;
            }
            if (mo4128c != null) {
                throw new C25193b("This card is already mapped to another card");
            }
            C10271a c10271a = this.f70426a;
            long g = cVar.g();
            long g2 = cVar2.g();
            Objects.requireNonNull(c10271a);
            b c10532b = new C10532b(c, Long.valueOf(g), c2, Long.valueOf(g2));
            cVar.o(false);
            cVar.p(cVar2);
            cVar2.b(cVar);
            cVar2.s(cVar.i() + cVar2.i());
            this.f70427b.mo4132e(Arrays.asList(cVar, cVar2));
            this.f70427b.mo4131f(cVar, cVar2);
            this.f70428c.mo4130a(c10532b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (r9.equals("") != false) goto L6;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e.q.a.d.c m4137b(java.lang.String r7, java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1682a.p1683a.C25172a.m4137b(java.lang.String, java.lang.String, java.lang.String):e.q.a.d.c");
    }
}
