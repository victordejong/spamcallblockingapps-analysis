package scala.collection.immutable;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.ImmutableSortedSetFactory;
import scala.math.Ordering;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/SortedSet$.class */
public final class SortedSet$ extends ImmutableSortedSetFactory<SortedSet> {
    public static final SortedSet$ MODULE$ = null;

    static {
        new SortedSet$();
    }

    private SortedSet$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<SortedSet<?>, A, SortedSet<A>> canBuildFrom(Ordering<A> ordering) {
        return newCanBuildFrom(ordering);
    }

    @Override // scala.collection.generic.SortedSetFactory
    public <A> SortedSet<A> empty(Ordering<A> ordering) {
        return TreeSet$.MODULE$.empty((Ordering) ordering);
    }

    @Override // scala.collection.generic.SortedSetFactory
    public <A> CanBuildFrom<SortedSet<?>, A, SortedSet<A>> newCanBuildFrom(Ordering<A> ordering) {
        return super.newCanBuildFrom(ordering);
    }
}
