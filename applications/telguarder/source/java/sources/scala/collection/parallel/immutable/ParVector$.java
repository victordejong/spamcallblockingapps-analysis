package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.ParFactory;
import scala.collection.parallel.Combiner;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParVector$.class */
public final class ParVector$ extends ParFactory<ParVector> implements Serializable {
    public static final ParVector$ MODULE$ = null;

    static {
        new ParVector$();
    }

    private ParVector$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> CanCombineFrom<ParVector<?>, T, ParVector<T>> canBuildFrom() {
        return new ParFactory.GenericCanCombineFrom(this);
    }

    @Override // scala.collection.generic.GenericCompanion
    public <T> Combiner<T, ParVector<T>> newBuilder() {
        return newCombiner();
    }

    @Override // scala.collection.generic.GenericParCompanion
    public <T> Combiner<T, ParVector<T>> newCombiner() {
        return new LazyParVectorCombiner();
    }
}
