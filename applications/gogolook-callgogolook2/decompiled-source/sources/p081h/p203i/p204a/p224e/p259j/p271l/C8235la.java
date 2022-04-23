package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.la */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/la.class */
public final class C8235la implements AbstractC8251mb {

    /* renamed from: b */
    public static final AbstractC8410va f19077b = new C8211ka();

    /* renamed from: a */
    public final AbstractC8410va f19078a;

    public C8235la() {
        this(new C8265na(C8249m9.m18278a(), m18338a()));
    }

    public C8235la(AbstractC8410va vaVar) {
        C8302p9.m18203a(vaVar, "messageInfoFactory");
        this.f19078a = vaVar;
    }

    /* renamed from: a */
    public static AbstractC8410va m18338a() {
        try {
            return (AbstractC8410va) Class.forName("h.i.g.j").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f19077b;
        }
    }

    /* renamed from: a */
    public static boolean m18337a(AbstractC8354sa saVar) {
        return saVar.mo18172D() == AbstractC8228l9.C8234f.f19073i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8251mb
    /* renamed from: a */
    public final <T> AbstractC8212kb<T> mo18273a(Class<T> cls) {
        C8236lb.m18325a((Class<?>) cls);
        AbstractC8354sa b = this.f19078a.mo18113b(cls);
        return b.mo18170F() ? AbstractC8228l9.class.isAssignableFrom(cls) ? C8012ab.m18690a(C8236lb.m18313c(), C8107f9.m18540b(), b.mo18171E()) : C8012ab.m18690a(C8236lb.m18336a(), C8107f9.m18539c(), b.mo18171E()) : AbstractC8228l9.class.isAssignableFrom(cls) ? m18337a(b) ? C8467ya.m17984a(cls, b, C8070db.m18607b(), AbstractC8088ea.m18562b(), C8236lb.m18313c(), C8107f9.m18540b(), C8372ta.m18162b()) : C8467ya.m17984a(cls, b, C8070db.m18607b(), AbstractC8088ea.m18562b(), C8236lb.m18313c(), null, C8372ta.m18162b()) : m18337a(b) ? C8467ya.m17984a(cls, b, C8070db.m18608a(), AbstractC8088ea.m18563a(), C8236lb.m18336a(), C8107f9.m18539c(), C8372ta.m18163a()) : C8467ya.m17984a(cls, b, C8070db.m18608a(), AbstractC8088ea.m18563a(), C8236lb.m18321b(), null, C8372ta.m18163a());
    }
}
