package scala.collection.mutable;

import java.util.Objects;
import scala.Proxy;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.TraversableOnce;
import scala.collection.mutable.QueueProxy;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/QueueProxy$$anon$1.class */
public final class QueueProxy$$anon$1 extends Queue<A> implements QueueProxy<A> {
    private final /* synthetic */ QueueProxy $outer;

    public QueueProxy$$anon$1(QueueProxy<A> queueProxy) {
        Objects.requireNonNull(queueProxy);
        this.$outer = queueProxy;
        Proxy.Cclass.$init$(this);
        QueueProxy.Cclass.$init$(this);
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.mutable.Builder, scala.collection.generic.Growable
    public QueueProxy<A> $plus$eq(A a) {
        return self().$plus$eq((Object) a);
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.generic.Growable
    public QueueProxy<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        return self().$plus$plus$eq(traversableOnce);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
    @Override // scala.collection.mutable.MutableList, scala.collection.GenSeqLike
    public A apply(int i) {
        return QueueProxy.Cclass.apply(this, i);
    }

    @Override // scala.collection.mutable.MutableList, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        QueueProxy.Cclass.clear(this);
    }

    @Override // scala.collection.mutable.Queue, scala.collection.mutable.MutableList, scala.collection.mutable.AbstractSeq, scala.collection.mutable.Cloneable
    public Queue<A> clone() {
        return QueueProxy.Cclass.clone(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
    @Override // scala.collection.mutable.Queue, scala.collection.mutable.QueueProxy
    public A dequeue() {
        return QueueProxy.Cclass.dequeue(this);
    }

    @Override // scala.collection.mutable.Queue, scala.collection.mutable.QueueProxy
    public void enqueue(Seq<A> seq) {
        QueueProxy.Cclass.enqueue(this, seq);
    }

    @Override // scala.collection.AbstractSeq, scala.Equals
    public boolean equals(Object obj) {
        return Proxy.Cclass.equals(this, obj);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
    @Override // scala.collection.mutable.Queue, scala.collection.mutable.QueueProxy
    public A front() {
        return QueueProxy.Cclass.front(this);
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return Proxy.Cclass.hashCode(this);
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return QueueProxy.Cclass.isEmpty(this);
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return QueueProxy.Cclass.iterator(this);
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.GenSeqLike
    public int length() {
        return QueueProxy.Cclass.length(this);
    }

    @Override // scala.collection.mutable.QueueProxy, scala.Proxy
    public Queue<A> self() {
        return this.$outer.self().clone();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return Proxy.Cclass.toString(this);
    }
}
