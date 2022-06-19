package scala.collection.mutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenMapFactory;
import scala.collection.generic.MutableMapFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/HashMap$.class */
public final class HashMap$ extends MutableMapFactory<HashMap> implements Serializable {
    public static final HashMap$ MODULE$ = null;

    static {
        new HashMap$();
    }

    private HashMap$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A, B> CanBuildFrom<HashMap<?, ?>, Tuple2<A, B>, HashMap<A, B>> canBuildFrom() {
        return new GenMapFactory.MapCanBuildFrom(this);
    }

    @Override // scala.collection.generic.MapFactory, scala.collection.generic.GenMapFactory
    public <A, B> HashMap<A, B> empty() {
        return new HashMap<>();
    }
}
