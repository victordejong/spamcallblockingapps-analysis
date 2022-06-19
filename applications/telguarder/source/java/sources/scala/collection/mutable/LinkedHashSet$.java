package scala.collection.mutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.MutableSetFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedHashSet$.class */
public final class LinkedHashSet$ extends MutableSetFactory<LinkedHashSet> implements Serializable {
    public static final LinkedHashSet$ MODULE$ = null;

    static {
        new LinkedHashSet$();
    }

    private LinkedHashSet$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> CanBuildFrom<LinkedHashSet<?>, A, LinkedHashSet<A>> canBuildFrom() {
        return setCanBuildFrom();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> LinkedHashSet<A> empty() {
        return new LinkedHashSet<>();
    }
}
