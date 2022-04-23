package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: h.i.a.e.j.l.ib */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/ib.class */
public final class C8170ib {

    /* renamed from: c */
    public static final C8170ib f18920c = new C8170ib();

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, AbstractC8212kb<?>> f18922b = new ConcurrentHashMap();

    /* renamed from: a */
    public final AbstractC8251mb f18921a = new C8235la();

    /* renamed from: a */
    public static C8170ib m18462a() {
        return f18920c;
    }

    /* renamed from: a */
    public final <T> AbstractC8212kb<T> m18461a(Class<T> cls) {
        C8302p9.m18203a(cls, "messageType");
        AbstractC8212kb<?> kbVar = this.f18922b.get(cls);
        AbstractC8212kb<T> kbVar2 = (AbstractC8212kb<T>) kbVar;
        if (kbVar == null) {
            kbVar2 = this.f18921a.mo18273a(cls);
            C8302p9.m18203a(cls, "messageType");
            C8302p9.m18203a(kbVar2, "schema");
            AbstractC8212kb<?> putIfAbsent = this.f18922b.putIfAbsent(cls, kbVar2);
            if (putIfAbsent != null) {
                kbVar2 = (AbstractC8212kb<T>) putIfAbsent;
            }
        }
        return kbVar2;
    }

    /* renamed from: a */
    public final <T> AbstractC8212kb<T> m18460a(T t) {
        return m18461a((Class) t.getClass());
    }
}
