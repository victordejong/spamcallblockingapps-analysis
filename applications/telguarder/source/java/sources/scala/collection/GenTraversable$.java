package scala.collection;

import scala.collection.generic.GenTraversableFactory;
import scala.collection.mutable.Builder;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/GenTraversable$.class */
public final class GenTraversable$ extends GenTraversableFactory<GenTraversable> {
    public static final GenTraversable$ MODULE$ = null;

    static {
        new GenTraversable$();
    }

    private GenTraversable$() {
        MODULE$ = this;
    }

    public <A> GenTraversableFactory<GenTraversable>.GenericCanBuildFrom<A> canBuildFrom() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Traversable<A>> newBuilder() {
        return Traversable$.MODULE$.newBuilder();
    }
}
