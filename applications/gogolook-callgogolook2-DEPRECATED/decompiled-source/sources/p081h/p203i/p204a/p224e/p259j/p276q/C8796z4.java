package p081h.p203i.p204a.p224e.p259j.p276q;

import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8568c4;
/* renamed from: h.i.a.e.j.q.z4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/z4.class */
public final class C8796z4 implements AbstractC8552a6 {

    /* renamed from: b */
    public static final AbstractC8639i5 f20157b = new C8551a5();

    /* renamed from: a */
    public final AbstractC8639i5 f20158a;

    public C8796z4() {
        this(new C8560b5(C8559b4.m17825a(), m16946a()));
    }

    public C8796z4(AbstractC8639i5 i5Var) {
        C8591e4.m17686a(i5Var, "messageInfoFactory");
        this.f20158a = i5Var;
    }

    /* renamed from: a */
    public static AbstractC8639i5 m16946a() {
        try {
            return (AbstractC8639i5) Class.forName("h.i.g.j").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f20157b;
        }
    }

    /* renamed from: a */
    public static boolean m16945a(AbstractC8623h5 h5Var) {
        return h5Var.mo17065c() == AbstractC8568c4.C8573e.f19636i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8552a6
    /* renamed from: a */
    public final <T> AbstractC8797z5<T> mo16944a(Class<T> cls) {
        C8561b6.m17811a((Class<?>) cls);
        AbstractC8623h5 b = this.f20158a.mo17451b(cls);
        return b.mo17066b() ? AbstractC8568c4.class.isAssignableFrom(cls) ? C8694o5.m17277a(C8561b6.m17799c(), C8728s3.m17206b(), b.mo17067a()) : C8694o5.m17277a(C8561b6.m17824a(), C8728s3.m17205c(), b.mo17067a()) : AbstractC8568c4.class.isAssignableFrom(cls) ? m16945a(b) ? C8684n5.m17335a(cls, b, C8730s5.m17202b(), AbstractC8747u4.m17119b(), C8561b6.m17799c(), C8728s3.m17206b(), C8610g5.m17626b()) : C8684n5.m17335a(cls, b, C8730s5.m17202b(), AbstractC8747u4.m17119b(), C8561b6.m17799c(), null, C8610g5.m17626b()) : m16945a(b) ? C8684n5.m17335a(cls, b, C8730s5.m17203a(), AbstractC8747u4.m17120a(), C8561b6.m17824a(), C8728s3.m17205c(), C8610g5.m17627a()) : C8684n5.m17335a(cls, b, C8730s5.m17203a(), AbstractC8747u4.m17120a(), C8561b6.m17807b(), null, C8610g5.m17627a());
    }
}
