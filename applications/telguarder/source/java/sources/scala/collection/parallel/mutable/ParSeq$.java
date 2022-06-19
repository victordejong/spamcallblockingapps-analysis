package scala.collection.parallel.mutable;

import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.ParFactory;
import scala.collection.parallel.Combiner;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParSeq$.class */
public final class ParSeq$ extends ParFactory<ParSeq> {
    public static final ParSeq$ MODULE$ = null;

    static {
        new ParSeq$();
    }

    private ParSeq$() {
        MODULE$ = this;
    }

    public <T> CanCombineFrom<ParSeq<?>, T, ParSeq<T>> canBuildFrom() {
        return new ParFactory.GenericCanCombineFrom(this);
    }

    @Override // scala.collection.generic.GenericCompanion
    public <T> Combiner<T, ParSeq<T>> newBuilder() {
        return package$.MODULE$.ParArrayCombiner().apply();
    }

    @Override // scala.collection.generic.GenericParCompanion
    public <T> Combiner<T, ParSeq<T>> newCombiner() {
        return package$.MODULE$.ParArrayCombiner().apply();
    }
}
