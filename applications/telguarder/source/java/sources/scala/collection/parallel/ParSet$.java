package scala.collection.parallel;

import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.ParSetFactory;
import scala.collection.parallel.mutable.ParHashSetCombiner$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSet$.class */
public final class ParSet$ extends ParSetFactory<ParSet> {
    public static final ParSet$ MODULE$ = null;

    static {
        new ParSet$();
    }

    private ParSet$() {
        MODULE$ = this;
    }

    public <T> CanCombineFrom<ParSet<?>, T, ParSet<T>> canBuildFrom() {
        return new ParSetFactory.GenericCanCombineFrom(this);
    }

    @Override // scala.collection.generic.ParSetFactory, scala.collection.generic.GenericParCompanion
    public <T> Combiner<T, ParSet<T>> newCombiner() {
        return ParHashSetCombiner$.MODULE$.apply();
    }
}
