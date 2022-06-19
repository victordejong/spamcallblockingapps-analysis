package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.ParSetFactory;
import scala.collection.immutable.HashSet;
import scala.collection.parallel.Combiner;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParHashSet$.class */
public final class ParHashSet$ extends ParSetFactory<ParHashSet> implements Serializable {
    public static final ParHashSet$ MODULE$ = null;

    static {
        new ParHashSet$();
    }

    private ParHashSet$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> CanCombineFrom<ParHashSet<?>, T, ParHashSet<T>> canBuildFrom() {
        return new ParSetFactory.GenericCanCombineFrom(this);
    }

    public <T> ParHashSet<T> fromTrie(HashSet<T> hashSet) {
        return new ParHashSet<>(hashSet);
    }

    @Override // scala.collection.generic.ParSetFactory, scala.collection.generic.GenericParCompanion
    public <T> Combiner<T, ParHashSet<T>> newCombiner() {
        return HashSetCombiner$.MODULE$.apply();
    }
}
