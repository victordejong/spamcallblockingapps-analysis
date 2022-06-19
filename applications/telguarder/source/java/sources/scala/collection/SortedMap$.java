package scala.collection;

import scala.Tuple2;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SortedMapFactory;
import scala.math.Ordering;
/* loaded from: classes3-dex2jar.jar:scala/collection/SortedMap$.class */
public final class SortedMap$ extends SortedMapFactory<SortedMap> {
    public static final SortedMap$ MODULE$ = null;

    static {
        new SortedMap$();
    }

    private SortedMap$() {
        MODULE$ = this;
    }

    public <A, B> CanBuildFrom<SortedMap<?, ?>, Tuple2<A, B>, SortedMap<A, B>> canBuildFrom(Ordering<A> ordering) {
        return new SortedMapFactory.SortedMapCanBuildFrom(this, ordering);
    }

    @Override // scala.collection.generic.SortedMapFactory
    public <A, B> SortedMap empty(Ordering<A> ordering) {
        return scala.collection.immutable.SortedMap$.MODULE$.empty((Ordering) ordering);
    }
}
