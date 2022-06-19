package scala.collection.concurrent;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenMapFactory;
import scala.collection.generic.MutableMapFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/TrieMap$.class */
public final class TrieMap$ extends MutableMapFactory<TrieMap> implements Serializable {
    public static final TrieMap$ MODULE$ = null;
    private final AtomicReferenceFieldUpdater<INodeBase<?, ?>, MainNode<?, ?>> inodeupdater = AtomicReferenceFieldUpdater.newUpdater(INodeBase.class, MainNode.class, "mainnode");

    static {
        new TrieMap$();
    }

    private TrieMap$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <K, V> CanBuildFrom<TrieMap<?, ?>, Tuple2<K, V>, TrieMap<K, V>> canBuildFrom() {
        return new GenMapFactory.MapCanBuildFrom(this);
    }

    @Override // scala.collection.generic.MapFactory, scala.collection.generic.GenMapFactory
    public <K, V> TrieMap<K, V> empty() {
        return new TrieMap<>();
    }

    public AtomicReferenceFieldUpdater<INodeBase<?, ?>, MainNode<?, ?>> inodeupdater() {
        return this.inodeupdater;
    }
}
