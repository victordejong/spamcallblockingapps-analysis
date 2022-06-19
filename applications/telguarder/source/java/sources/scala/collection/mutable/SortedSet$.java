package scala.collection.mutable;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.MutableSortedSetFactory;
import scala.collection.generic.SortedSetFactory;
import scala.math.Ordering;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SortedSet$.class */
public final class SortedSet$ extends MutableSortedSetFactory<SortedSet> {
    public static final SortedSet$ MODULE$ = null;

    static {
        new SortedSet$();
    }

    private SortedSet$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<SortedSet<?>, A, SortedSet<A>> canBuildFrom(Ordering<A> ordering) {
        return new SortedSetFactory.SortedSetCanBuildFrom(this, ordering);
    }

    @Override // scala.collection.generic.SortedSetFactory
    public <A> SortedSet<A> empty(Ordering<A> ordering) {
        return TreeSet$.MODULE$.empty((Ordering) ordering);
    }
}
