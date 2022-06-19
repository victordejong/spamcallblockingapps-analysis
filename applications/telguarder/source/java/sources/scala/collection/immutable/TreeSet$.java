package scala.collection.immutable;

import scala.Serializable;
import scala.collection.generic.ImmutableSortedSetFactory;
import scala.collection.mutable.Builder;
import scala.collection.mutable.SetBuilder;
import scala.math.Ordering;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/TreeSet$.class */
public final class TreeSet$ extends ImmutableSortedSetFactory<TreeSet> implements Serializable {
    public static final TreeSet$ MODULE$ = null;

    static {
        new TreeSet$();
    }

    private TreeSet$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.collection.generic.SortedSetFactory
    public <A> TreeSet<A> empty(Ordering<A> ordering) {
        return new TreeSet<>(ordering);
    }

    public <A> Builder<A, TreeSet<A>> implicitBuilder(Ordering<A> ordering) {
        return newBuilder(ordering);
    }

    @Override // scala.collection.generic.SortedSetFactory
    public <A> Builder<A, TreeSet<A>> newBuilder(Ordering<A> ordering) {
        return new SetBuilder(empty((Ordering) ordering));
    }
}
