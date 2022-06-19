package scala.concurrent.impl;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import scala.concurrent.util.Unsafe;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/impl/AbstractPromise.class */
abstract class AbstractPromise {
    static final long _refoffset;
    protected static final AtomicReferenceFieldUpdater<AbstractPromise, Object> updater;
    private volatile Object _ref;

    static {
        try {
            _refoffset = Unsafe.instance.objectFieldOffset(AbstractPromise.class.getDeclaredField("_ref"));
            updater = AtomicReferenceFieldUpdater.newUpdater(AbstractPromise.class, Object.class, "_ref");
        } catch (Throwable th) {
            throw new ExceptionInInitializerError(th);
        }
    }

    public final Object getState() {
        return this._ref;
    }

    public final boolean updateState(Object obj, Object obj2) {
        return Unsafe.instance.compareAndSwapObject(this, _refoffset, obj, obj2);
    }
}
