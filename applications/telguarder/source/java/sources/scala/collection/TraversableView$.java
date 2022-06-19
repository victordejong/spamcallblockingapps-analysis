package scala.collection;

import scala.collection.TraversableView;
import scala.collection.generic.CanBuildFrom;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableView$.class */
public final class TraversableView$ {
    public static final TraversableView$ MODULE$ = null;

    static {
        new TraversableView$();
    }

    private TraversableView$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<TraversableView<?, ? extends Traversable<?>>, A, TraversableView<A, Traversable<?>>> canBuildFrom() {
        return new CanBuildFrom<TraversableView<?, ? extends Traversable<?>>, A, TraversableView<A, Traversable<?>>>() { // from class: scala.collection.TraversableView$$anon$1
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
