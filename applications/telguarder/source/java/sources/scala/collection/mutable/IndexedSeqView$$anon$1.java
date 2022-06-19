package scala.collection.mutable;

import java.util.Objects;
import scala.Function1;
import scala.collection.IterableViewLike;
import scala.collection.Iterator;
import scala.collection.SeqViewLike;
import scala.collection.TraversableViewLike;
import scala.collection.mutable.IndexedSeqView;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$$anon$1.class */
public final class IndexedSeqView$$anon$1 extends IndexedSeqView<A, Coll>.AbstractTransformed<A> implements IndexedSeqView<A, Coll>.Filtered {
    private final /* synthetic */ IndexedSeqView $outer;
    private volatile boolean bitmap$0;
    private final int[] index;
    private final Function1<A, Object> pred;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IndexedSeqView$$anon$1(IndexedSeqView indexedSeqView, IndexedSeqView<A, Coll> indexedSeqView2) {
        super(indexedSeqView);
        Objects.requireNonNull(indexedSeqView);
        this.$outer = indexedSeqView;
        this.pred = indexedSeqView2;
        TraversableViewLike.Filtered.Cclass.$init$(this);
        IterableViewLike.Filtered.Cclass.$init$(this);
        SeqViewLike.Filtered.Cclass.$init$(this);
        IndexedSeqView.Filtered.Cclass.$init$(this);
    }

    private int[] index$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.index = SeqViewLike.Filtered.Cclass.index(this);
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.index;
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public Object apply(int i) {
        return SeqViewLike.Filtered.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.mutable.IndexedSeqView.AbstractTransformed, scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        TraversableViewLike.Filtered.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.SeqViewLike.Filtered
    public int[] index() {
        return this.bitmap$0 ? this.index : index$lzycompute();
    }

    @Override // scala.collection.mutable.IndexedSeqView.AbstractTransformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return IterableViewLike.Filtered.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.Filtered.Cclass.length(this);
    }

    @Override // scala.collection.TraversableViewLike.Filtered
    public Function1<A, Object> pred() {
        return this.pred;
    }

    @Override // scala.collection.IterableViewLike.Filtered
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Filtered$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.Filtered
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Filtered$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.Filtered
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Filtered$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.mutable.IndexedSeqView.Filtered
    public /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$Filtered$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.mutable.IndexedSeqView.Transformed, scala.collection.mutable.IndexedSeqView, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    public void update(int i, A a) {
        IndexedSeqView.Filtered.Cclass.update(this, i, a);
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.Filtered.Cclass.viewIdentifier(this);
    }
}
