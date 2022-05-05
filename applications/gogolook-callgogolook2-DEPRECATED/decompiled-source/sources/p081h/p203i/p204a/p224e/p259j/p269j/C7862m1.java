package p081h.p203i.p204a.p224e.p259j.p269j;

import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1;
/* renamed from: h.i.a.e.j.j.m1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/m1.class */
public final class C7862m1 implements AbstractC7913s2 {

    /* renamed from: a */
    public static final C7862m1 f18413a = new C7862m1();

    /* renamed from: a */
    public static C7862m1 m19244a() {
        return f18413a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7913s2
    /* renamed from: a */
    public final boolean mo18996a(Class<?> cls) {
        return AbstractC7869n1.class.isAssignableFrom(cls);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7913s2
    /* renamed from: b */
    public final AbstractC7906r2 mo18995b(Class<?> cls) {
        if (!AbstractC7869n1.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (AbstractC7906r2) AbstractC7869n1.m19160a((Class<AbstractC7869n1>) cls.asSubclass(AbstractC7869n1.class)).mo19125a(AbstractC7869n1.C7874e.f18430c, (Object) null, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
