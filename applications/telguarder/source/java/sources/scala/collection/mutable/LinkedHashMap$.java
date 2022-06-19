package scala.collection.mutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenMapFactory;
import scala.collection.generic.MutableMapFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedHashMap$.class */
public final class LinkedHashMap$ extends MutableMapFactory<LinkedHashMap> implements Serializable {
    public static final LinkedHashMap$ MODULE$ = null;

    static {
        new LinkedHashMap$();
    }

    private LinkedHashMap$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A, B> CanBuildFrom<LinkedHashMap<?, ?>, Tuple2<A, B>, LinkedHashMap<A, B>> canBuildFrom() {
        return new GenMapFactory.MapCanBuildFrom(this);
    }

    @Override // scala.collection.generic.MapFactory, scala.collection.generic.GenMapFactory
    public <A, B> LinkedHashMap<A, B> empty() {
        return new LinkedHashMap<>();
    }
}
