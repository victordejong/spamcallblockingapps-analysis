package scala.collection.parallel.mutable;

import scala.Serializable;
import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.ParSetFactory;
import scala.collection.parallel.Combiner;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashSet$.class */
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

    @Override // scala.collection.generic.ParSetFactory, scala.collection.generic.GenSetFactory, scala.collection.generic.GenericCompanion
    public <T> Combiner<T, ParHashSet<T>> newBuilder() {
        return newCombiner();
    }

    @Override // scala.collection.generic.ParSetFactory, scala.collection.generic.GenericParCompanion
    public <T> Combiner<T, ParHashSet<T>> newCombiner() {
        return ParHashSetCombiner$.MODULE$.apply();
    }
}
