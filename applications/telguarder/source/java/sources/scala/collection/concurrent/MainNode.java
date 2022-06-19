package scala.collection.concurrent;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/MainNode.class */
public abstract class MainNode<K, V> extends BasicNode {
    public static final AtomicReferenceFieldUpdater<MainNode, MainNode> updater = AtomicReferenceFieldUpdater.newUpdater(MainNode.class, MainNode.class, "prev");
    public volatile MainNode<K, V> prev = null;

    public boolean CAS_PREV(MainNode<K, V> mainNode, MainNode<K, V> mainNode2) {
        return updater.compareAndSet(this, mainNode, mainNode2);
    }

    @Deprecated
    public MainNode<K, V> READ_PREV() {
        return updater.get(this);
    }

    public void WRITE_PREV(MainNode<K, V> mainNode) {
        updater.set(this, mainNode);
    }

    public abstract int cachedSize(Object obj);
}
