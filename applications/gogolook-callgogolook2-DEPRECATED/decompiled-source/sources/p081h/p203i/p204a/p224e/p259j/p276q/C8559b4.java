package p081h.p203i.p204a.p224e.p259j.p276q;

import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8568c4;
/* renamed from: h.i.a.e.j.q.b4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/b4.class */
public final class C8559b4 implements AbstractC8639i5 {

    /* renamed from: a */
    public static final C8559b4 f19612a = new C8559b4();

    /* renamed from: a */
    public static C8559b4 m17825a() {
        return f19612a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8639i5
    /* renamed from: a */
    public final boolean mo17452a(Class<?> cls) {
        return AbstractC8568c4.class.isAssignableFrom(cls);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8639i5
    /* renamed from: b */
    public final AbstractC8623h5 mo17451b(Class<?> cls) {
        if (!AbstractC8568c4.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (AbstractC8623h5) AbstractC8568c4.m17761a((Class<AbstractC8568c4>) cls.asSubclass(AbstractC8568c4.class)).mo17556a(AbstractC8568c4.C8573e.f19630c, (Object) null, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
