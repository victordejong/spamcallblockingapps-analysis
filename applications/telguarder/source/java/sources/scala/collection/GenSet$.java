package scala.collection;

import scala.collection.generic.GenTraversableFactory;
import scala.collection.immutable.Set;
import scala.collection.mutable.Builder;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/GenSet$.class */
public final class GenSet$ extends GenTraversableFactory<GenSet> {
    public static final GenSet$ MODULE$ = null;

    static {
        new GenSet$();
    }

    private GenSet$() {
        MODULE$ = this;
    }

    public <A> GenTraversableFactory<GenSet>.GenericCanBuildFrom<A> canBuildFrom() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Set<A>> newBuilder() {
        return Set$.MODULE$.newBuilder();
    }
}
