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
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$$anon$3.class */
public final class IndexedSeqView$$anon$3 extends IndexedSeqView<A, Coll>.AbstractTransformed<A> implements IndexedSeqView<A, Coll>.DroppedWhile {
    private final /* synthetic */ IndexedSeqView $outer;
    private volatile boolean bitmap$0;
    private final Function1<A, Object> pred;
    private final int start;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IndexedSeqView$$anon$3(IndexedSeqView indexedSeqView, IndexedSeqView<A, Coll> indexedSeqView2) {
        super(indexedSeqView);
        Objects.requireNonNull(indexedSeqView);
        this.$outer = indexedSeqView;
        this.pred = indexedSeqView2;
        TraversableViewLike.DroppedWhile.Cclass.$init$(this);
        IterableViewLike.DroppedWhile.Cclass.$init$(this);
        SeqViewLike.DroppedWhile.Cclass.$init$(this);
        IndexedSeqView.DroppedWhile.Cclass.$init$(this);
    }

    private int start$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.start = SeqViewLike.DroppedWhile.Cclass.start(this);
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.start;
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public Object apply(int i) {
        return SeqViewLike.DroppedWhile.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.mutable.IndexedSeqView.AbstractTransformed, scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        TraversableViewLike.DroppedWhile.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.mutable.IndexedSeqView.AbstractTransformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return IterableViewLike.DroppedWhile.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.DroppedWhile.Cclass.length(this);
    }

    @Override // scala.collection.TraversableViewLike.DroppedWhile
    public Function1<A, Object> pred() {
        return this.pred;
    }

    @Override // scala.collection.IterableViewLike.DroppedWhile
    public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$DroppedWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.DroppedWhile
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$DroppedWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.TraversableViewLike.DroppedWhile
    public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$DroppedWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.mutable.IndexedSeqView.DroppedWhile
    public /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$DroppedWhile$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.SeqViewLike.DroppedWhile
    public int start() {
        return this.bitmap$0 ? this.start : start$lzycompute();
    }

    @Override // scala.collection.mutable.IndexedSeqView.Transformed, scala.collection.mutable.IndexedSeqView, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    public void update(int i, A a) {
        IndexedSeqView.DroppedWhile.Cclass.update(this, i, a);
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return TraversableViewLike.DroppedWhile.Cclass.viewIdentifier(this);
    }
}
