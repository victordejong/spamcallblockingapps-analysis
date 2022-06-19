package scala.collection;

import scala.Tuple2;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenMapFactory;
import scala.collection.generic.MapFactory;
import scala.collection.immutable.Map;
/* loaded from: classes3-dex2jar.jar:scala/collection/Map$.class */
public final class Map$ extends MapFactory<Map> {
    public static final Map$ MODULE$ = null;

    static {
        new Map$();
    }

    private Map$() {
        MODULE$ = this;
    }

    public <A, B> CanBuildFrom<Map<?, ?>, Tuple2<A, B>, Map<A, B>> canBuildFrom() {
        return new GenMapFactory.MapCanBuildFrom(this);
    }

    @Override // scala.collection.generic.MapFactory, scala.collection.generic.GenMapFactory
    public <A, B> Map<A, B> empty() {
        return scala.collection.immutable.Map$.MODULE$.empty();
    }
}
