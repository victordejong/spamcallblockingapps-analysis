package scala.collection;

import scala.collection.IndexedSeq;
import scala.collection.IndexedSeqLike;
import scala.collection.generic.GenericCompanion;
import scala.collection.mutable.Buffer;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$$anon$3.class */
public final class SeqLike$$anon$3 extends AbstractSeq<B> implements IndexedSeq<B> {
    private final int length;
    private final int n0$1;
    private final IndexedSeq x2$1;

    public SeqLike$$anon$3(int i, int i2, IndexedSeq indexedSeq) {
        this.n0$1 = i;
        this.x2$1 = indexedSeq;
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        this.length = i2 - i;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [B, java.lang.Object] */
    @Override // scala.collection.GenSeqLike
    public B apply(int i) {
        return this.x2$1.apply(this.n0$1 + i);
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
    public Iterator<B> iterator() {
        return IndexedSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return this.length;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public IndexedSeq<B> seq() {
        return IndexedSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeq<B> thisCollection() {
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
