package scala.collection.parallel;

import scala.Tuple2;
import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.ParMapFactory;
import scala.collection.parallel.mutable.ParHashMap;
import scala.collection.parallel.mutable.ParHashMapCombiner$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMap$.class */
public final class ParMap$ extends ParMapFactory<ParMap> {
    public static final ParMap$ MODULE$ = null;

    static {
        new ParMap$();
    }

    private ParMap$() {
        MODULE$ = this;
    }

    public <K, V> CanCombineFrom<ParMap<?, ?>, Tuple2<K, V>, ParMap<K, V>> canBuildFrom() {
        return new ParMapFactory.CanCombineFromMap(this);
    }

    @Override // scala.collection.generic.GenMapFactory
    public <K, V> ParMap<K, V> empty() {
        return new ParHashMap();
    }

    @Override // scala.collection.generic.ParMapFactory, scala.collection.generic.GenericParMapCompanion
    public <K, V> Combiner<Tuple2<K, V>, ParMap<K, V>> newCombiner() {
        return ParHashMapCombiner$.MODULE$.apply();
    }
}
