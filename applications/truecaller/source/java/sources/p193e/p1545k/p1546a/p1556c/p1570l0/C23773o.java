package p193e.p1545k.p1546a.p1556c.p1570l0;

import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.C23795m;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23907c0;
/* renamed from: e.k.a.c.l0.o */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/o.class */
public final class C23773o {

    /* renamed from: a */
    public final HashMap<C23907c0, AbstractC23890n<Object>> f65872a = new HashMap<>(64);

    /* renamed from: b */
    public final AtomicReference<C23795m> f65873b = new AtomicReference<>();

    /* renamed from: a */
    public AbstractC23890n<Object> m6089a(AbstractC23698i abstractC23698i) {
        AbstractC23890n<Object> abstractC23890n;
        synchronized (this) {
            abstractC23890n = this.f65872a.get(new C23907c0(abstractC23698i, false));
        }
        return abstractC23890n;
    }

    /* renamed from: b */
    public AbstractC23890n<Object> m6088b(Class<?> cls) {
        AbstractC23890n<Object> abstractC23890n;
        synchronized (this) {
            abstractC23890n = this.f65872a.get(new C23907c0(cls, false));
        }
        return abstractC23890n;
    }
}
