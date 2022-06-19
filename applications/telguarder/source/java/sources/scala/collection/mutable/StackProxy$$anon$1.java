package scala.collection.mutable;

import java.util.Objects;
import scala.Proxy;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.TraversableOnce;
import scala.collection.immutable.List;
import scala.collection.mutable.StackProxy;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/StackProxy$$anon$1.class */
public final class StackProxy$$anon$1 extends Stack<A> implements StackProxy<A> {
    private final /* synthetic */ StackProxy $outer;

    public StackProxy$$anon$1(StackProxy<A> stackProxy) {
        Objects.requireNonNull(stackProxy);
        this.$outer = stackProxy;
        Proxy.Cclass.$init$(this);
        StackProxy.Cclass.$init$(this);
    }

    @Override // scala.collection.mutable.StackProxy
    public StackProxy<A> $plus$eq(A a) {
        return self().push(a);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
    @Override // scala.collection.mutable.Stack, scala.collection.GenSeqLike
    public A apply(int i) {
        return StackProxy.Cclass.apply(this, i);
    }

    @Override // scala.collection.mutable.Stack, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.mutable.Stack, scala.collection.mutable.StackProxy
    public void clear() {
        StackProxy.Cclass.clear(this);
    }

    @Override // scala.collection.mutable.Stack, scala.collection.mutable.AbstractSeq, scala.collection.mutable.Cloneable
    public Stack<A> clone() {
        return StackProxy.Cclass.clone(this);
    }

    @Override // scala.collection.AbstractSeq, scala.Equals
    public boolean equals(Object obj) {
        return Proxy.Cclass.equals(this, obj);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return Proxy.Cclass.hashCode(this);
    }

    @Override // scala.collection.mutable.Stack, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return StackProxy.Cclass.isEmpty(this);
    }

    @Override // scala.collection.mutable.Stack, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return StackProxy.Cclass.iterator(this);
    }

    @Override // scala.collection.mutable.Stack, scala.collection.GenSeqLike
    public int length() {
        return StackProxy.Cclass.length(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
    @Override // scala.collection.mutable.Stack, scala.collection.mutable.StackProxy
    public A pop() {
        return StackProxy.Cclass.pop(this);
    }

    @Override // scala.collection.mutable.Stack, scala.collection.mutable.StackProxy
    public StackProxy<A> push(A a) {
        return StackProxy.Cclass.push(this, a);
    }

    @Override // scala.collection.mutable.Stack, scala.collection.mutable.StackProxy
    public StackProxy<A> push(A a, A a2, Seq<A> seq) {
        return StackProxy.Cclass.push(this, a, a2, seq);
    }

    @Override // scala.collection.mutable.Stack, scala.collection.mutable.StackProxy
    public StackProxy<A> pushAll(TraversableOnce<A> traversableOnce) {
        return StackProxy.Cclass.pushAll(this, traversableOnce);
    }

    @Override // scala.collection.mutable.StackProxy, scala.Proxy
    public Stack<A> self() {
        return this.$outer.self().clone();
    }

    @Override // scala.collection.mutable.Stack, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<A> toList() {
        return StackProxy.Cclass.toList(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return Proxy.Cclass.toString(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
    @Override // scala.collection.mutable.Stack, scala.collection.mutable.StackProxy
    public A top() {
        return StackProxy.Cclass.top(this);
    }
}
