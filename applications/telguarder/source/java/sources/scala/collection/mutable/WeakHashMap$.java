package scala.collection.mutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenMapFactory;
import scala.collection.generic.MutableMapFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WeakHashMap$.class */
public final class WeakHashMap$ extends MutableMapFactory<WeakHashMap> implements Serializable {
    public static final WeakHashMap$ MODULE$ = null;

    static {
        new WeakHashMap$();
    }

    private WeakHashMap$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A, B> CanBuildFrom<WeakHashMap<?, ?>, Tuple2<A, B>, WeakHashMap<A, B>> canBuildFrom() {
        return new GenMapFactory.MapCanBuildFrom(this);
    }

    @Override // scala.collection.generic.MapFactory, scala.collection.generic.GenMapFactory
    public <A, B> WeakHashMap<A, B> empty() {
        return new WeakHashMap<>();
    }
}
