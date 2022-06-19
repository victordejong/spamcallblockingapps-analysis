package p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0;

import java.util.TreeSet;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c;
/* renamed from: e.m.a.c.p1.h0.t */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/t.class */
public final class C24731t implements AbstractC24714h {

    /* renamed from: a */
    public final long f69304a;

    /* renamed from: b */
    public final TreeSet<C24718l> f69305b = new TreeSet<>(C24704b.f69217a);

    /* renamed from: c */
    public long f69306c;

    public C24731t(long j) {
        this.f69304a = j;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c.AbstractC24707b
    /* renamed from: a */
    public void mo4717a(AbstractC24705c abstractC24705c, C24718l c24718l) {
        this.f69305b.add(c24718l);
        this.f69306c += c24718l.f69268c;
        m4712f(abstractC24705c, 0L);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24714h
    /* renamed from: b */
    public void mo4716b(AbstractC24705c abstractC24705c, String str, long j, long j2) {
        if (j2 != -1) {
            m4712f(abstractC24705c, j2);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24714h
    /* renamed from: c */
    public void mo4715c() {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c.AbstractC24707b
    /* renamed from: d */
    public void mo4714d(AbstractC24705c abstractC24705c, C24718l c24718l) {
        this.f69305b.remove(c24718l);
        this.f69306c -= c24718l.f69268c;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c.AbstractC24707b
    /* renamed from: e */
    public void mo4713e(AbstractC24705c abstractC24705c, C24718l c24718l, C24718l c24718l2) {
        this.f69305b.remove(c24718l);
        this.f69306c -= c24718l.f69268c;
        mo4717a(abstractC24705c, c24718l2);
    }

    /* renamed from: f */
    public final void m4712f(AbstractC24705c abstractC24705c, long j) {
        while (this.f69306c + j > this.f69304a && !this.f69305b.isEmpty()) {
            try {
                abstractC24705c.mo4709c(this.f69305b.first());
            } catch (AbstractC24705c.C24706a e) {
            }
        }
    }
}
