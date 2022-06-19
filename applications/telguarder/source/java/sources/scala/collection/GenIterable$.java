package scala.collection;

import scala.collection.generic.GenTraversableFactory;
import scala.collection.mutable.Builder;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/GenIterable$.class */
public final class GenIterable$ extends GenTraversableFactory<GenIterable> {
    public static final GenIterable$ MODULE$ = null;

    static {
        new GenIterable$();
    }

    private GenIterable$() {
        MODULE$ = this;
    }

    public <A> GenTraversableFactory<GenIterable>.GenericCanBuildFrom<A> canBuildFrom() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Iterable<A>> newBuilder() {
        return Iterable$.MODULE$.newBuilder();
    }
}
