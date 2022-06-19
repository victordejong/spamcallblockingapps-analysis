package scala.collection.mutable;

import scala.collection.SeqView;
import scala.collection.TraversableView;
import scala.collection.generic.CanBuildFrom;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$.class */
public final class IndexedSeqView$ {
    public static final IndexedSeqView$ MODULE$ = null;

    static {
        new IndexedSeqView$();
    }

    private IndexedSeqView$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<TraversableView<?, Object>, A, SeqView<A, Object>> arrCanBuildFrom() {
        return new CanBuildFrom<TraversableView<?, Object>, A, SeqView<A, Object>>() { // from class: scala.collection.mutable.IndexedSeqView$$anon$7
            @Override // scala.collection.generic.CanBuildFrom
            public TraversableView.NoBuilder<A> apply() {
                return new TraversableView.NoBuilder<>();
            }

            public TraversableView.NoBuilder<A> apply(TraversableView<?, Object> traversableView) {
                return new TraversableView.NoBuilder<>();
            }
        };
    }

    public <A> CanBuildFrom<TraversableView<?, ? extends Traversable<?>>, A, SeqView<A, Seq<?>>> canBuildFrom() {
        return new CanBuildFrom<TraversableView<?, ? extends Traversable<?>>, A, SeqView<A, Seq<?>>>() { // from class: scala.collection.mutable.IndexedSeqView$$anon$6
            @Override // scala.collection.generic.CanBuildFrom
            public TraversableView.NoBuilder<A> apply() {
                return new TraversableView.NoBuilder<>();
            }

            public TraversableView.NoBuilder<A> apply(TraversableView<?, ? extends Traversable<?>> traversableView) {
                return new TraversableView.NoBuilder<>();
            }
        };
    }
}
