package scala.collection.immutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.ImmutableSetFactory;
import scala.collection.immutable.ListSet;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/ListSet$.class */
public final class ListSet$ extends ImmutableSetFactory<ListSet> implements Serializable {
    public static final ListSet$ MODULE$ = null;

    static {
        new ListSet$();
    }

    private ListSet$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> CanBuildFrom<ListSet<?>, A, ListSet<A>> canBuildFrom() {
        return setCanBuildFrom();
    }

    @Override // scala.collection.generic.ImmutableSetFactory
    /* renamed from: emptyInstance */
    public ListSet emptyInstance2() {
        return ListSet$EmptyListSet$.MODULE$;
    }

    @Override // scala.collection.generic.ImmutableSetFactory, scala.collection.generic.GenSetFactory, scala.collection.generic.GenericCompanion
    public <A> Builder<A, ListSet<A>> newBuilder() {
        return new ListSet.ListSetBuilder();
    }
}
