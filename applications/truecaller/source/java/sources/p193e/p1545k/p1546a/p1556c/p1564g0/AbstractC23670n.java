package p193e.p1545k.p1546a.p1556c.p1564g0;

import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
/* renamed from: e.k.a.c.g0.n */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/n.class */
public abstract class AbstractC23670n extends AbstractC23663i {

    /* renamed from: c */
    public final C23678p[] f65634c;

    public AbstractC23670n(AbstractC23652e0 abstractC23652e0, C23678p c23678p, C23678p[] c23678pArr) {
        super(abstractC23652e0, c23678p);
        this.f65634c = c23678pArr;
    }

    /* renamed from: m */
    public abstract Object mo6372m() throws Exception;

    /* renamed from: n */
    public abstract Object mo6371n(Object[] objArr) throws Exception;

    /* renamed from: o */
    public abstract Object mo6370o(Object obj) throws Exception;

    /* renamed from: p */
    public final C23669m m6369p(int i) {
        AbstractC23698i mo6367r = mo6367r(i);
        AbstractC23652e0 abstractC23652e0 = this.f65617a;
        C23678p[] c23678pArr = this.f65634c;
        return new C23669m(this, mo6367r, abstractC23652e0, (c23678pArr == null || i < 0 || i >= c23678pArr.length) ? null : c23678pArr[i], i);
    }

    /* renamed from: q */
    public abstract int mo6368q();

    /* renamed from: r */
    public abstract AbstractC23698i mo6367r(int i);

    /* renamed from: s */
    public abstract Class<?> mo6366s(int i);
}
