package p193e.p1577m.p1578a.p1596c.p1602g1.p1611z;

import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.z.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/z/b.class */
public final class C24435b implements AbstractC24408h {

    /* renamed from: f */
    public AbstractC24409i f68185f;

    /* renamed from: h */
    public boolean f68187h;

    /* renamed from: i */
    public long f68188i;

    /* renamed from: j */
    public int f68189j;

    /* renamed from: k */
    public int f68190k;

    /* renamed from: l */
    public int f68191l;

    /* renamed from: m */
    public long f68192m;

    /* renamed from: n */
    public boolean f68193n;

    /* renamed from: o */
    public C24434a f68194o;

    /* renamed from: p */
    public C24439e f68195p;

    /* renamed from: a */
    public final C24798t f68180a = new C24798t(4);

    /* renamed from: b */
    public final C24798t f68181b = new C24798t(9);

    /* renamed from: c */
    public final C24798t f68182c = new C24798t(11);

    /* renamed from: d */
    public final C24798t f68183d = new C24798t();

    /* renamed from: e */
    public final C24436c f68184e = new C24436c();

    /* renamed from: g */
    public int f68186g = 1;

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: a */
    public void mo5131a(long j, long j2) {
        this.f68186g = 1;
        this.f68187h = false;
        this.f68189j = 0;
    }

    /* renamed from: b */
    public final void m5130b() {
        if (!this.f68193n) {
            this.f68185f.mo4953s(new AbstractC24418q.C24420b(-9223372036854775807L, 0L));
            this.f68193n = true;
        }
    }

    /* renamed from: c */
    public final C24798t m5129c(C24353e c24353e) throws IOException, InterruptedException {
        int i = this.f68191l;
        C24798t c24798t = this.f68183d;
        byte[] bArr = c24798t.f69504a;
        if (i > bArr.length) {
            c24798t.f69504a = new byte[Math.max(bArr.length * 2, i)];
            c24798t.f69506c = 0;
            c24798t.f69505b = 0;
        } else {
            c24798t.m4547C(0);
        }
        this.f68183d.m4548B(this.f68191l);
        c24353e.m5207h(this.f68183d.f69504a, 0, this.f68191l, false);
        return this.f68183d;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0154 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo5128d(p193e.p1577m.p1578a.p1596c.p1602g1.C24353e r9, p193e.p1577m.p1578a.p1596c.p1602g1.C24417p r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1611z.C24435b.mo5128d(e.m.a.c.g1.e, e.m.a.c.g1.p):int");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: h */
    public void mo5127h(AbstractC24409i abstractC24409i) {
        this.f68185f = abstractC24409i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: i */
    public boolean mo5126i(C24353e c24353e) throws IOException, InterruptedException {
        boolean z = false;
        c24353e.m5210e(this.f68180a.f69504a, 0, 3, false);
        this.f68180a.m4547C(0);
        if (this.f68180a.m4527s() != 4607062) {
            return false;
        }
        c24353e.m5210e(this.f68180a.f69504a, 0, 2, false);
        this.f68180a.m4547C(0);
        if ((this.f68180a.m4524v() & 250) != 0) {
            return false;
        }
        c24353e.m5210e(this.f68180a.f69504a, 0, 4, false);
        this.f68180a.m4547C(0);
        int m4541e = this.f68180a.m4541e();
        c24353e.f67728f = 0;
        c24353e.m5214a(m4541e, false);
        c24353e.m5210e(this.f68180a.f69504a, 0, 4, false);
        this.f68180a.m4547C(0);
        if (this.f68180a.m4541e() == 0) {
            z = true;
        }
        return z;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    public void release() {
    }
}
