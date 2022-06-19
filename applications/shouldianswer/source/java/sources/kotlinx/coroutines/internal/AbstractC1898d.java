package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* renamed from: kotlinx.coroutines.internal.d */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/d.class */
public abstract class AbstractC1898d<T> extends AbstractC1918p {

    /* renamed from: a */
    private static final AtomicReferenceFieldUpdater f4636a = AtomicReferenceFieldUpdater.newUpdater(AbstractC1898d.class, Object.class, "_consensus");
    private volatile Object _consensus;

    public AbstractC1898d() {
        Object obj;
        obj = C1897c.f4635a;
        this._consensus = obj;
    }

    /* renamed from: d */
    private final Object m2666d(Object obj) {
        if (!m2667b(obj)) {
            obj = this._consensus;
        }
        return obj;
    }

    /* renamed from: a */
    public abstract Object mo2668a(T t);

    /* renamed from: a */
    public abstract void mo2640a(T t, Object obj);

    /* renamed from: b */
    public final boolean m2667b(Object obj) {
        Object obj2;
        Object obj3;
        obj2 = C1897c.f4635a;
        if (obj != obj2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4636a;
            obj3 = C1897c.f4635a;
            return atomicReferenceFieldUpdater.compareAndSet(this, obj3, obj);
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.AbstractC1918p
    /* renamed from: c */
    public final Object mo2608c(Object obj) {
        Object obj2;
        Object obj3 = this._consensus;
        Object obj4 = obj3;
        obj2 = C1897c.f4635a;
        if (obj3 == obj2) {
            obj4 = m2666d(mo2668a(obj));
        }
        mo2640a(obj, obj4);
        return obj4;
    }
}
