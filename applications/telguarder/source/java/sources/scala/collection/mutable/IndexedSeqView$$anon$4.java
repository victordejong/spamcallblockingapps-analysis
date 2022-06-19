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
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$$anon$4.class */
public final class IndexedSeqView$$anon$4 extends IndexedSeqView<A, Coll>.AbstractTransformed<A> implements IndexedSeqView<A, Coll>.TakenWhile {
    private final /* synthetic */ IndexedSeqView $outer;
    private volatile boolean bitmap$0;
    private final int len;
    private final Function1<A, Object> pred;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IndexedSeqView$$anon$4(IndexedSeqView indexedSeqView, IndexedSeqView<A, Coll> indexedSeqView2) {
        super(indexedSeqView);
        Objects.requireNonNull(indexedSeqView);
        this.$outer = indexedSeqView;
        this.pred = indexedSeqView2;
        TraversableViewLike.TakenWhile.Cclass.$init$(this);
        IterableViewLike.TakenWhile.Cclass.$init$(this);
        SeqViewLike.TakenWhile.Cclass.$init$(this);
        IndexedSeqView.TakenWhile.Cclass.$init$(this);
    }

    private int len$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.len = SeqViewLike.TakenWhile.Cclass.len(this);
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.len;
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public Object apply(int i) {
        return SeqViewLike.TakenWhile.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.mutable.IndexedSeqView.AbstractTransformed, scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        TraversableViewLike.TakenWhile.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.mutable.IndexedSeqView.AbstractTransformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return IterableViewLike.TakenWhile.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.TakenWhile
    public int len() {
        return this.bitmap$0 ? this.len : len$lzycompute();
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.TakenWhile.Cclass.length(this);
    }

    @Override // scala.collection.TraversableViewLike.TakenWhile
    public Function1<A, Object> pred() {
        return this.pred;
    }

    @Override // scala.collection.IterableViewLike.TakenWhile
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$TakenWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.TakenWhile
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$TakenWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.TakenWhile
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$TakenWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.mutable.IndexedSeqView.TakenWhile
    public /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$TakenWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.mutable.IndexedSeqView.Transformed, scala.collection.mutable.IndexedSeqView, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    public void update(int i, A a) {
        IndexedSeqView.TakenWhile.Cclass.update(this, i, a);
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.TakenWhile.Cclass.viewIdentifier(this);
    }
}
