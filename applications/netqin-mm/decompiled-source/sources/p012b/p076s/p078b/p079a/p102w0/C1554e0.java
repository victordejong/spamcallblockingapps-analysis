package p012b.p076s.p078b.p079a.p102w0;

import android.net.Uri;
import java.io.IOException;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p102w0.C1544d0;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1700u;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1704x;
/* renamed from: b.s.b.a.w0.e0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/e0.class */
public final class C1554e0 extends AbstractC1538b implements C1544d0.AbstractC1547c {

    /* renamed from: f */
    public final Uri f6350f;

    /* renamed from: g */
    public final AbstractC1684g.AbstractC1685a f6351g;

    /* renamed from: h */
    public final AbstractC1353j f6352h;

    /* renamed from: i */
    public final AbstractC1700u f6353i;

    /* renamed from: j */
    public final String f6354j;

    /* renamed from: k */
    public final int f6355k;

    /* renamed from: l */
    public final Object f6356l;

    /* renamed from: m */
    public long f6357m = -9223372036854775807L;

    /* renamed from: n */
    public boolean f6358n;

    /* renamed from: o */
    public AbstractC1704x f6359o;

    public C1554e0(Uri uri, AbstractC1684g.AbstractC1685a aVar, AbstractC1353j jVar, AbstractC1700u uVar, String str, int i, Object obj) {
        this.f6350f = uri;
        this.f6351g = aVar;
        this.f6352h = jVar;
        this.f6353i = uVar;
        this.f6354j = str;
        this.f6355k = i;
        this.f6356l = obj;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public AbstractC1631p mo32294a(AbstractC1634r.C1635a aVar, AbstractC1678b bVar, long j) {
        AbstractC1684g createDataSource = this.f6351g.createDataSource();
        AbstractC1704x xVar = this.f6359o;
        if (xVar != null) {
            createDataSource.mo32326a(xVar);
        }
        return new C1544d0(this.f6350f, createDataSource, this.f6352h.createExtractors(), this.f6353i, m32923a(aVar), this, bVar, this.f6354j, this.f6355k);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b, p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public Object mo32507a() {
        return this.f6356l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [b.s.b.a.w0.e0] */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p012b.p076s.p078b.p079a.p102w0.C1544d0.AbstractC1547c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo32860a(long r6, boolean r8) {
        /*
            r5 = this;
            r0 = r6
            r9 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            r0 = r5
            long r0 = r0.f6357m
            r9 = r0
        L_0x0011:
            r0 = r5
            long r0 = r0.f6357m
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0024
            r0 = r5
            boolean r0 = r0.f6358n
            r1 = r8
            if (r0 != r1) goto L_0x0024
            return
        L_0x0024:
            r0 = r5
            r1 = r9
            r2 = r8
            r0.m32859b(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1554e0.mo32860a(long, boolean):void");
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public void mo32295a(AbstractC1631p pVar) {
        ((C1544d0) pVar).m32888q();
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
    /* renamed from: a */
    public void mo32293a(AbstractC1704x xVar) {
        this.f6359o = xVar;
        m32859b(this.f6357m, this.f6358n);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: b */
    public void mo32502b() throws IOException {
    }

    /* renamed from: b */
    public final void m32859b(long j, boolean z) {
        this.f6357m = j;
        this.f6358n = z;
        m32924a(new C1580k0(this.f6357m, this.f6358n, false, this.f6356l), (Object) null);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
    /* renamed from: c */
    public void mo32678c() {
    }
}
