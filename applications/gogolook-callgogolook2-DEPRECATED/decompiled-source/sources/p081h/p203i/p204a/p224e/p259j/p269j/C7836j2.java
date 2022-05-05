package p081h.p203i.p204a.p224e.p259j.p269j;

import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1;
/* renamed from: h.i.a.e.j.j.j2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/j2.class */
public final class C7836j2 implements AbstractC7857l3 {

    /* renamed from: b */
    public static final AbstractC7913s2 f18362b = new C7848k2();

    /* renamed from: a */
    public final AbstractC7913s2 f18363a;

    public C7836j2() {
        this(new C7856l2(C7862m1.m19244a(), m19337a()));
    }

    public C7836j2(AbstractC7913s2 s2Var) {
        C7891p1.m19103a(s2Var, "messageInfoFactory");
        this.f18363a = s2Var;
    }

    /* renamed from: a */
    public static AbstractC7913s2 m19337a() {
        try {
            return (AbstractC7913s2) Class.forName("h.i.g.j").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f18362b;
        }
    }

    /* renamed from: a */
    public static boolean m19336a(AbstractC7906r2 r2Var) {
        return r2Var.mo18808a() == AbstractC7869n1.C7874e.f18436i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7857l3
    /* renamed from: a */
    public final <T> AbstractC7849k3<T> mo19260a(Class<T> cls) {
        C7864m3.m19230a((Class<?>) cls);
        AbstractC7906r2 b = this.f18363a.mo18995b(cls);
        return b.mo18807b() ? AbstractC7869n1.class.isAssignableFrom(cls) ? C7960y2.m18799a(C7864m3.m19218c(), C7784d1.m19488b(), b.mo18806c()) : C7960y2.m18799a(C7864m3.m19243a(), C7784d1.m19487c(), b.mo18806c()) : AbstractC7869n1.class.isAssignableFrom(cls) ? m19336a(b) ? C7953x2.m18833a(cls, b, C7786d3.m19485b(), AbstractC7793e2.m19447b(), C7864m3.m19218c(), C7784d1.m19488b(), C7899q2.m19086b()) : C7953x2.m18833a(cls, b, C7786d3.m19485b(), AbstractC7793e2.m19447b(), C7864m3.m19218c(), null, C7899q2.m19086b()) : m19336a(b) ? C7953x2.m18833a(cls, b, C7786d3.m19486a(), AbstractC7793e2.m19448a(), C7864m3.m19243a(), C7784d1.m19487c(), C7899q2.m19087a()) : C7953x2.m18833a(cls, b, C7786d3.m19486a(), AbstractC7793e2.m19448a(), C7864m3.m19226b(), null, C7899q2.m19087a());
    }
}
