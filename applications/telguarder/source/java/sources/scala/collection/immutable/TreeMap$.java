package scala.collection.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.ImmutableSortedMapFactory;
import scala.collection.generic.SortedMapFactory;
import scala.math.Ordering;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/TreeMap$.class */
public final class TreeMap$ extends ImmutableSortedMapFactory<TreeMap> implements Serializable {
    public static final TreeMap$ MODULE$ = null;

    static {
        new TreeMap$();
    }

    private TreeMap$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A, B> CanBuildFrom<TreeMap<?, ?>, Tuple2<A, B>, TreeMap<A, B>> canBuildFrom(Ordering<A> ordering) {
        return new SortedMapFactory.SortedMapCanBuildFrom(this, ordering);
    }

    @Override // scala.collection.generic.SortedMapFactory
    public <A, B> TreeMap<A, B> empty(Ordering<A> ordering) {
        return new TreeMap<>(ordering);
    }
}
