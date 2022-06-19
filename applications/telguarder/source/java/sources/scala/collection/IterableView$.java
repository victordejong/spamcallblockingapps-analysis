package scala.collection;

import scala.collection.TraversableView;
import scala.collection.generic.CanBuildFrom;
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableView$.class */
public final class IterableView$ {
    public static final IterableView$ MODULE$ = null;

    static {
        new IterableView$();
    }

    private IterableView$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<TraversableView<?, ? extends Traversable<?>>, A, IterableView<A, Iterable<?>>> canBuildFrom() {
        return new CanBuildFrom<TraversableView<?, ? extends Traversable<?>>, A, IterableView<A, Iterable<?>>>() { // from class: scala.collection.IterableView$$anon$1
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
