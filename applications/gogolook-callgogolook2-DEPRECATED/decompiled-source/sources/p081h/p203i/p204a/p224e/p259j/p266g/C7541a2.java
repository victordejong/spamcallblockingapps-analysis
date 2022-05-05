package p081h.p203i.p204a.p224e.p259j.p266g;

import p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7583f1;
/* renamed from: h.i.a.e.j.g.a2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/a2.class */
public final class C7541a2 implements AbstractC7564c3 {

    /* renamed from: b */
    public static final AbstractC7620j2 f17712b = new C7553b2();

    /* renamed from: a */
    public final AbstractC7620j2 f17713a;

    public C7541a2() {
        this(new C7563c2(C7576e1.m20215a(), m20375a()));
    }

    public C7541a2(AbstractC7620j2 j2Var) {
        C7602h1.m20130a(j2Var, "messageInfoFactory");
        this.f17713a = j2Var;
    }

    /* renamed from: a */
    public static AbstractC7620j2 m20375a() {
        try {
            return (AbstractC7620j2) Class.forName("h.i.g.j").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f17712b;
        }
    }

    /* renamed from: a */
    public static boolean m20374a(AbstractC7613i2 i2Var) {
        return i2Var.mo19666a() == AbstractC7583f1.C7588e.f17849i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7564c3
    /* renamed from: a */
    public final <T> AbstractC7554b3<T> mo20294a(Class<T> cls) {
        C7571d3.m20261a((Class<?>) cls);
        AbstractC7613i2 a = this.f17713a.mo20092a(cls);
        if (a.mo19665b()) {
            return AbstractC7583f1.class.isAssignableFrom(cls) ? C7667p2.m19866a(C7571d3.m20249c(), C7707v0.m19754b(), a.mo19664c()) : C7667p2.m19866a(C7571d3.m20275a(), C7707v0.m19753c(), a.mo19664c());
        }
        if (AbstractC7583f1.class.isAssignableFrom(cls)) {
            boolean a2 = m20374a(a);
            AbstractC7681r2 b = C7695t2.m19793b();
            AbstractC7708v1 b2 = AbstractC7708v1.m19751b();
            AbstractC7696t3<?, ?> c = C7571d3.m20249c();
            return a2 ? C7660o2.m19949a(cls, a, b, b2, c, C7707v0.m19754b(), C7603h2.m20124b()) : C7660o2.m19949a(cls, a, b, b2, c, (AbstractC7686s0<?>) null, C7603h2.m20124b());
        }
        boolean a3 = m20374a(a);
        AbstractC7681r2 a4 = C7695t2.m19794a();
        AbstractC7708v1 a5 = AbstractC7708v1.m19752a();
        return a3 ? C7660o2.m19949a(cls, a, a4, a5, C7571d3.m20275a(), C7707v0.m19753c(), C7603h2.m20125a()) : C7660o2.m19949a(cls, a, a4, a5, C7571d3.m20257b(), (AbstractC7686s0<?>) null, C7603h2.m20125a());
    }
}
