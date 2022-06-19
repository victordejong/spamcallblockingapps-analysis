package scala.collection.mutable;

import java.util.Objects;
import scala.collection.AbstractSeq;
import scala.collection.IndexedSeq;
import scala.collection.IndexedSeqLike;
import scala.collection.Iterator;
import scala.collection.generic.GenericCompanion;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayLike$$anon$1.class */
public final class ArrayLike$$anon$1 extends AbstractSeq<Object> implements IndexedSeq<Object> {
    private final /* synthetic */ ArrayLike $outer;

    public ArrayLike$$anon$1(ArrayLike<A, Repr> arrayLike) {
        Objects.requireNonNull(arrayLike);
        this.$outer = arrayLike;
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
    }

    @Override // scala.collection.GenSeqLike
    public Object apply(int i) {
        Object apply = this.$outer.apply(i);
        IndexedSeq<Object> indexedSeq = apply;
        if (apply instanceof Object) {
            indexedSeq = apply;
            if (apply.getClass().isArray()) {
                indexedSeq = WrappedArray$.MODULE$.make(apply).deep();
            }
        }
        return indexedSeq;
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<IndexedSeq> companion() {
        return IndexedSeq.Cclass.companion(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return IndexedSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return IndexedSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return this.$outer.length();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public IndexedSeq<Object> seq() {
        return IndexedSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "Array";
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeq<Object> thisCollection() {
        return IndexedSeqLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Buffer<A1> toBuffer() {
        return IndexedSeqLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeq toCollection(Object obj) {
        return IndexedSeqLike.Cclass.toCollection(this, obj);
    }
}
