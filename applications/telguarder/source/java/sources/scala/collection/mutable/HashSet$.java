package scala.collection.mutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.MutableSetFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/HashSet$.class */
public final class HashSet$ extends MutableSetFactory<HashSet> implements Serializable {
    public static final HashSet$ MODULE$ = null;

    static {
        new HashSet$();
    }

    private HashSet$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> CanBuildFrom<HashSet<?>, A, HashSet<A>> canBuildFrom() {
        return setCanBuildFrom();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> HashSet<A> empty() {
        return new HashSet<>();
    }
}
