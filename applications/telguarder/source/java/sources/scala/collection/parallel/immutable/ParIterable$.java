package scala.collection.parallel.immutable;

import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.ParFactory;
import scala.collection.parallel.Combiner;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParIterable$.class */
public final class ParIterable$ extends ParFactory<ParIterable> {
    public static final ParIterable$ MODULE$ = null;

    static {
        new ParIterable$();
    }

    private ParIterable$() {
        MODULE$ = this;
    }

    public <T> CanCombineFrom<ParIterable<?>, T, ParIterable<T>> canBuildFrom() {
        return new ParFactory.GenericCanCombineFrom(this);
    }

    @Override // scala.collection.generic.GenericCompanion
    public <T> Combiner<T, ParIterable<T>> newBuilder() {
        return ParVector$.MODULE$.newBuilder();
    }

    @Override // scala.collection.generic.GenericParCompanion
    public <T> Combiner<T, ParIterable<T>> newCombiner() {
        return ParVector$.MODULE$.newCombiner();
    }
}
