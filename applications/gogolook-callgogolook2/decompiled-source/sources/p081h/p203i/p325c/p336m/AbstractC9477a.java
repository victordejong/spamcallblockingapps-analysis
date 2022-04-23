package p081h.p203i.p325c.p336m;

import java.util.Set;
import p081h.p203i.p325c.p366u.AbstractC9929a;
/* renamed from: h.i.c.m.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/m/a.class */
public abstract class AbstractC9477a implements AbstractC9483e {
    @Override // p081h.p203i.p325c.p336m.AbstractC9483e
    /* renamed from: a */
    public <T> T mo15033a(Class<T> cls) {
        AbstractC9929a<T> d = mo15030d(cls);
        if (d == null) {
            return null;
        }
        return d.get();
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9483e
    /* renamed from: c */
    public <T> Set<T> mo15031c(Class<T> cls) {
        return mo15032b(cls).get();
    }
}
