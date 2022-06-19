package scala.collection.immutable;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.immutable.Map;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Map$EmptyMap$.class */
public class Map$EmptyMap$ extends AbstractMap<Object, Nothing$> implements Serializable {
    public static final Map$EmptyMap$ MODULE$ = null;

    static {
        new Map$EmptyMap$();
    }

    public Map$EmptyMap$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
    public Map<Object, Nothing$> $minus(Object obj) {
        return this;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <B1> Map<Object, B1> $plus(Tuple2<Object, B1> tuple2) {
        return updated(tuple2.mo269_1(), (Object) tuple2.mo268_2());
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<Nothing$> get(Object obj) {
        return None$.MODULE$;
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<Object, Nothing$>> iterator() {
        return Iterator$.MODULE$.empty();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return 0;
    }

    @Override // scala.collection.immutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMap, scala.collection.MapLike
    public <B1> Map<Object, B1> updated(Object obj, B1 b1) {
        return new Map.Map1(obj, b1);
    }
}
