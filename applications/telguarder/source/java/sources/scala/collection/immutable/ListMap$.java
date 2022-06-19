package scala.collection.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenMapFactory;
import scala.collection.generic.ImmutableMapFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/ListMap$.class */
public final class ListMap$ extends ImmutableMapFactory<ListMap> implements Serializable {
    public static final ListMap$ MODULE$ = null;

    static {
        new ListMap$();
    }

    private ListMap$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A, B> CanBuildFrom<ListMap<?, ?>, Tuple2<A, B>, ListMap<A, B>> canBuildFrom() {
        return new GenMapFactory.MapCanBuildFrom(this);
    }

    @Override // scala.collection.generic.MapFactory, scala.collection.generic.GenMapFactory
    public <A, B> ListMap<A, B> empty() {
        return ListMap$EmptyListMap$.MODULE$;
    }
}
