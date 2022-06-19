package scala.collection;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SetFactory;
import scala.collection.immutable.Set;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/collection/Set$.class */
public final class Set$ extends SetFactory<Set> {
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
        return scala.collection.immutable.Set$.MODULE$.empty();
    }

    @Override // scala.collection.generic.GenSetFactory, scala.collection.generic.GenericCompanion
    public <A> Builder<A, Set<A>> newBuilder() {
        return scala.collection.immutable.Set$.MODULE$.newBuilder();
    }
}
