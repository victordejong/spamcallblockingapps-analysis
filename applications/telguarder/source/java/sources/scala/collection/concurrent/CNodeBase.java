package scala.collection.concurrent;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/CNodeBase.class */
abstract class CNodeBase<K, V> extends MainNode<K, V> {
    public static final AtomicIntegerFieldUpdater<CNodeBase> updater = AtomicIntegerFieldUpdater.newUpdater(CNodeBase.class, "csize");
    public volatile int csize = -1;

    public boolean CAS_SIZE(int i, int i2) {
        return updater.compareAndSet(this, i, i2);
    }

    public int READ_SIZE() {
        return updater.get(this);
    }

    public void WRITE_SIZE(int i) {
        updater.set(this, i);
    }
}
