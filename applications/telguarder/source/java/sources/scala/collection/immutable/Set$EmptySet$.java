package scala.collection.immutable;

import scala.Function1;
import scala.Serializable;
import scala.collection.AbstractSet;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Set;
import scala.collection.immutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSet;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Set$EmptySet$.class */
public class Set$EmptySet$ extends AbstractSet<Object> implements Set<Object>, Serializable {
    public static final Set$EmptySet$ MODULE$ = null;

    static {
        new Set$EmptySet$();
    }

    public Set$EmptySet$() {
        MODULE$ = this;
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Set.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
    public Set<Object> $minus(Object obj) {
        return this;
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public Set<Object> $plus(Object obj) {
        return new Set.Set1(obj);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(obj));
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Set> companion() {
        return Set.Cclass.companion(this);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public boolean contains(Object obj) {
        return false;
    }

    @Override // scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
    public /* bridge */ /* synthetic */ scala.collection.Set empty() {
        return (scala.collection.Set) empty();
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return Iterator$.MODULE$.empty();
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Object, ParSet<Object>> parCombiner() {
        return Set.Cclass.parCombiner(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Set<Object> seq() {
        return Set.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return 0;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <B> Set<B> toSet() {
        return this;
    }
}
