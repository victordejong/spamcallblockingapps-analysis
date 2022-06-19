package scala.collection.mutable;

import java.util.Objects;
import scala.collection.Iterator;
import scala.collection.SeqViewLike;
import scala.collection.mutable.IndexedSeqView;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$$anon$5.class */
public final class IndexedSeqView$$anon$5 extends IndexedSeqView<A, Coll>.AbstractTransformed<A> implements IndexedSeqView<A, Coll>.Reversed {
    private final /* synthetic */ IndexedSeqView $outer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IndexedSeqView$$anon$5(IndexedSeqView<A, Coll> indexedSeqView) {
        super(indexedSeqView);
        Objects.requireNonNull(indexedSeqView);
        this.$outer = indexedSeqView;
        SeqViewLike.Reversed.Cclass.$init$(this);
        IndexedSeqView.Reversed.Cclass.$init$(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public Object apply(int i) {
        return SeqViewLike.Reversed.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.mutable.IndexedSeqView.AbstractTransformed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return SeqViewLike.Reversed.Cclass.iterator(this);
    }

    @Override // scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
    public int length() {
        return SeqViewLike.Reversed.Cclass.length(this);
    }

    @Override // scala.collection.SeqViewLike.Reversed
    public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Reversed$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.mutable.IndexedSeqView.Reversed
    public /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$Reversed$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.mutable.IndexedSeqView.Transformed, scala.collection.mutable.IndexedSeqView, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    public void update(int i, A a) {
        IndexedSeqView.Reversed.Cclass.update(this, i, a);
    }

    @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
    public final String viewIdentifier() {
        return SeqViewLike.Reversed.Cclass.viewIdentifier(this);
    }
}
