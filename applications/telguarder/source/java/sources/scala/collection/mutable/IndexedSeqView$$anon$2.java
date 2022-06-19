package scala.collection.mutable;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.Iterator;
import scala.collection.SeqViewLike;
import scala.collection.TraversableViewLike;
import scala.collection.generic.SliceInterval;
import scala.collection.mutable.IndexedSeqView;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$$anon$2.class */
public final class IndexedSeqView$$anon$2 extends IndexedSeqView<A, Coll>.AbstractTransformed<A> implements IndexedSeqView<A, Coll>.Sliced {
    private final /* synthetic */ IndexedSeqView $outer;
    private final SliceInterval endpoints;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public IndexedSeqView$$anon$2(IndexedSeqView indexedSeqView, IndexedSeqView<A, Coll> indexedSeqView2) {
        super(indexedSeqView);
        Objects.requireNonNull(indexedSeqView);
        this.$outer = indexedSeqView;
        this.endpoints = indexedSeqView2;
        TraversableViewLike.Sliced.Cclass.$init$(this);
        IterableViewLike.Sliced.Cclass.$init$(this);
        SeqViewLike.Sliced.Cclass.$init$(this);
        IndexedSeqView.Sliced.Cclass.$init$(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public Object apply(int i) {
        return SeqViewLike.Sliced.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public SliceInterval endpoints() {
        return this.endpoints;
    }

    @Override // scala.collection.mutable.IndexedSeqView.AbstractTransformed, scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        SeqViewLike.Sliced.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public int from() {
        return TraversableViewLike.Sliced.Cclass.from(this);
    }

    @Override // scala.collection.mutable.IndexedSeqView.AbstractTransformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return SeqViewLike.Sliced.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return IndexedSeqView.Sliced.Cclass.length(this);
    }

    @Override // scala.collection.IterableViewLike.Sliced
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Sliced$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.Sliced
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Sliced$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Sliced$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.mutable.IndexedSeqView.Sliced
    public /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$Sliced$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.Sliced
    public int until() {
        return TraversableViewLike.Sliced.Cclass.until(this);
    }

    @Override // scala.collection.mutable.IndexedSeqView.Transformed, scala.collection.mutable.IndexedSeqView, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    public void update(int i, A a) {
        IndexedSeqView.Sliced.Cclass.update(this, i, a);
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Sliced.Cclass.viewIdentifier(this);
    }
}
