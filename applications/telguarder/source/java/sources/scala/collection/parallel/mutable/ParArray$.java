package scala.collection.parallel.mutable;

import scala.Array$;
import scala.Serializable;
import scala.collection.GenTraversableOnce;
import scala.collection.Seq;
import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.ParFactory;
import scala.collection.parallel.Combiner;
import scala.reflect.ClassTag;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$.class */
public final class ParArray$ extends ParFactory<ParArray> implements Serializable {
    public static final ParArray$ MODULE$ = null;

    static {
        new ParArray$();
    }

    private ParArray$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    private <T> ParArray<T> wrapOrRebuild(Object obj, int i) {
        return obj instanceof Object[] ? new ParArray<>(new ExposedArraySeq((Object[]) obj, i)) : new ParArray<>(new ExposedArraySeq(ScalaRunTime$.MODULE$.toObjectArray(obj), i));
    }

    public <T> CanCombineFrom<ParArray<?>, T, ParArray<T>> canBuildFrom() {
        return new ParFactory.GenericCanCombineFrom(this);
    }

    public <T> ParArray<T> createFromCopy(T[] tArr, ClassTag<T> classTag) {
        Object[] objArr = (Object[]) classTag.newArray(tArr.length);
        Array$.MODULE$.copy(tArr, 0, objArr, 0, tArr.length);
        return handoff(objArr);
    }

    public <T> ParArray<T> fromTraversables(Seq<GenTraversableOnce<T>> seq) {
        ResizableParArrayCombiner<T> apply = package$.MODULE$.ParArrayCombiner().apply();
        seq.foreach(new ParArray$$anonfun$fromTraversables$1(apply));
        return apply.result();
    }

    public <T> ParArray<T> handoff(Object obj) {
        return wrapOrRebuild(obj, ScalaRunTime$.MODULE$.array_length(obj));
    }

    public <T> ParArray<T> handoff(Object obj, int i) {
        return wrapOrRebuild(obj, i);
    }

    @Override // scala.collection.generic.GenericCompanion
    public <T> Combiner<T, ParArray<T>> newBuilder() {
        return newCombiner();
    }

    @Override // scala.collection.generic.GenericParCompanion
    public <T> Combiner<T, ParArray<T>> newCombiner() {
        return package$.MODULE$.ParArrayCombiner().apply();
    }
}
