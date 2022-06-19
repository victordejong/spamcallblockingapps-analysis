package scala.collection.mutable;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.MutableSetFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Set$.class */
public final class Set$ extends MutableSetFactory<Set> {
    public static final Set$ MODULE$ = null;

    static {
        new Set$();
    }

    private Set$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<Set<?>, A, Set<A>> canBuildFrom() {
        return setCanBuildFrom();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Set<A> empty() {
        return HashSet$.MODULE$.empty();
    }
}
