package scala.collection;

import scala.collection.TraversableView;
import scala.collection.generic.CanBuildFrom;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqView$.class */
public final class SeqView$ {
    public static final SeqView$ MODULE$ = null;

    static {
        new SeqView$();
    }

    private SeqView$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<TraversableView<?, ? extends Traversable<?>>, A, SeqView<A, Seq<?>>> canBuildFrom() {
        return new CanBuildFrom<TraversableView<?, ? extends Traversable<?>>, A, SeqView<A, Seq<?>>>() { // from class: scala.collection.SeqView$$anon$1
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
