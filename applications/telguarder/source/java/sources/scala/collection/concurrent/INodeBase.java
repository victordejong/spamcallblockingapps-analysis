package scala.collection.concurrent;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/INodeBase.class */
abstract class INodeBase<K, V> extends BasicNode {
    public final Gen gen;
    public volatile MainNode<K, V> mainnode = null;
    public static final AtomicReferenceFieldUpdater<INodeBase, MainNode> updater = AtomicReferenceFieldUpdater.newUpdater(INodeBase.class, MainNode.class, "mainnode");
    public static final Object RESTART = new Object();

    public INodeBase(Gen gen) {
        this.gen = gen;
    }

    public BasicNode prev() {
        return null;
    }
}
