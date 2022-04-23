package p131c.p161d.p170b.p188c.p190b1;

import android.net.Uri;
import java.io.IOException;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2737t;
import p131c.p161d.p170b.p188c.p190b1.C2745v;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2821e;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2827j;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2838q;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2841t;
import p131c.p161d.p170b.p188c.p209v0.AbstractC3023d;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3045j;
/* renamed from: c.d.b.c.b1.w */
/* loaded from: classes-dex2jar.jar:c/d/b/c/b1/w.class */
public final class C2752w extends AbstractC2722l implements C2745v.AbstractC2748c {

    /* renamed from: f */
    public final Uri f10013f;

    /* renamed from: g */
    public final AbstractC2827j.AbstractC2828a f10014g;

    /* renamed from: h */
    public final AbstractC3045j f10015h;

    /* renamed from: i */
    public final AbstractC3023d<?> f10016i;

    /* renamed from: j */
    public final AbstractC2838q f10017j;

    /* renamed from: k */
    public final String f10018k;

    /* renamed from: l */
    public final int f10019l;

    /* renamed from: m */
    public final Object f10020m;

    /* renamed from: n */
    public long f10021n = -9223372036854775807L;

    /* renamed from: o */
    public boolean f10022o;

    /* renamed from: p */
    public boolean f10023p;

    /* renamed from: q */
    public AbstractC2841t f10024q;

    public C2752w(Uri uri, AbstractC2827j.AbstractC2828a aVar, AbstractC3045j jVar, AbstractC3023d<?> dVar, AbstractC2838q qVar, String str, int i, Object obj) {
        this.f10013f = uri;
        this.f10014g = aVar;
        this.f10015h = jVar;
        this.f10016i = dVar;
        this.f10017j = qVar;
        this.f10018k = str;
        this.f10019l = i;
        this.f10020m = obj;
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t
    /* renamed from: a */
    public AbstractC2735s mo29150a(AbstractC2737t.C2738a aVar, AbstractC2821e eVar, long j) {
        AbstractC2827j createDataSource = this.f10014g.createDataSource();
        AbstractC2841t tVar = this.f10024q;
        if (tVar != null) {
            createDataSource.mo28885a(tVar);
        }
        return new C2745v(this.f10013f, createDataSource, this.f10015h.createExtractors(), this.f10016i, this.f10017j, m29274a(aVar), this, eVar, this.f10018k, this.f10019l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r6v0, types: [c.d.b.c.b1.w] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p131c.p161d.p170b.p188c.p190b1.C2745v.AbstractC2748c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo29152a(long r7, boolean r9, boolean r10) {
        /*
            r6 = this;
            r0 = r7
            r11 = r0
            r0 = r7
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            r0 = r6
            long r0 = r0.f10021n
            r11 = r0
        L_0x0011:
            r0 = r6
            long r0 = r0.f10021n
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002d
            r0 = r6
            boolean r0 = r0.f10022o
            r1 = r9
            if (r0 != r1) goto L_0x002d
            r0 = r6
            boolean r0 = r0.f10023p
            r1 = r10
            if (r0 != r1) goto L_0x002d
            return
        L_0x002d:
            r0 = r6
            r1 = r11
            r2 = r9
            r3 = r10
            r0.m29147b(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p190b1.C2752w.mo29152a(long, boolean, boolean):void");
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t
    /* renamed from: a */
    public void mo29151a(AbstractC2735s sVar) {
        ((C2745v) sVar).m29169q();
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2722l
    /* renamed from: a */
    public void mo29149a(AbstractC2841t tVar) {
        this.f10024q = tVar;
        this.f10016i.mo28108b();
        m29147b(this.f10021n, this.f10022o, this.f10023p);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2737t
    /* renamed from: b */
    public void mo29148b() throws IOException {
    }

    /* renamed from: b */
    public final void m29147b(long j, boolean z, boolean z2) {
        this.f10021n = j;
        this.f10022o = z;
        this.f10023p = z2;
        m29273a(new C2697b0(this.f10021n, this.f10022o, false, this.f10023p, null, this.f10020m));
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2722l
    /* renamed from: e */
    public void mo29146e() {
        this.f10016i.mo28112a();
    }
}
