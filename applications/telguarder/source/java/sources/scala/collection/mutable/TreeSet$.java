package scala.collection.mutable;

import scala.Serializable;
import scala.collection.generic.MutableSortedSetFactory;
import scala.math.Ordering;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/TreeSet$.class */
public final class TreeSet$ extends MutableSortedSetFactory<TreeSet> implements Serializable {
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
}
