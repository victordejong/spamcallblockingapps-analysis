package p193e.p1577m.p1578a.p1596c.p1622m1;

import java.util.List;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24266f;
/* renamed from: e.m.a.c.m1.j */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/j.class */
public abstract class AbstractC24571j extends AbstractC24266f implements AbstractC24565e {

    /* renamed from: a */
    public AbstractC24565e f68676a;

    /* renamed from: b */
    public long f68677b;

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: a */
    public long mo4813a(int i) {
        AbstractC24565e abstractC24565e = this.f68676a;
        Objects.requireNonNull(abstractC24565e);
        return abstractC24565e.mo4813a(i) + this.f68677b;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: c */
    public int mo4812c() {
        AbstractC24565e abstractC24565e = this.f68676a;
        Objects.requireNonNull(abstractC24565e);
        return abstractC24565e.mo4812c();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24259a
    public void clear() {
        super.clear();
        this.f68676a = null;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: d */
    public int mo4811d(long j) {
        AbstractC24565e abstractC24565e = this.f68676a;
        Objects.requireNonNull(abstractC24565e);
        return abstractC24565e.mo4811d(j - this.f68677b);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: e */
    public List<C24562b> mo4810e(long j) {
        AbstractC24565e abstractC24565e = this.f68676a;
        Objects.requireNonNull(abstractC24565e);
        return abstractC24565e.mo4810e(j - this.f68677b);
    }
}
