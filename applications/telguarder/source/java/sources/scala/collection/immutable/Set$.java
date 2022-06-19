package scala.collection.immutable;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.ImmutableSetFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Set$.class */
public final class Set$ extends ImmutableSetFactory<Set> {
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

    @Override // scala.collection.generic.ImmutableSetFactory
    public Set emptyInstance() {
        return Set$EmptySet$.MODULE$;
    }
}
