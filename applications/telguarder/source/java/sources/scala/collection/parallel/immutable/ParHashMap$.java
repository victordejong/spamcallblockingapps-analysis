package scala.collection.parallel.immutable;

import java.util.concurrent.atomic.AtomicInteger;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.ParMapFactory;
import scala.collection.immutable.HashMap;
import scala.collection.parallel.Combiner;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParHashMap$.class */
public final class ParHashMap$ extends ParMapFactory<ParHashMap> implements Serializable {
    public static final ParHashMap$ MODULE$ = null;
    private AtomicInteger totalcombines = new AtomicInteger(0);

    static {
        new ParHashMap$();
    }

    private ParHashMap$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <K, V> CanCombineFrom<ParHashMap<?, ?>, Tuple2<K, V>, ParHashMap<K, V>> canBuildFrom() {
        return new ParMapFactory.CanCombineFromMap(this);
    }

    @Override // scala.collection.generic.GenMapFactory
    public <K, V> ParHashMap<K, V> empty() {
        return new ParHashMap<>();
    }

    public <K, V> ParHashMap<K, V> fromTrie(HashMap<K, V> hashMap) {
        return new ParHashMap<>(hashMap);
    }

    @Override // scala.collection.generic.ParMapFactory, scala.collection.generic.GenericParMapCompanion
    public <K, V> Combiner<Tuple2<K, V>, ParHashMap<K, V>> newCombiner() {
        return HashMapCombiner$.MODULE$.apply();
    }

    public AtomicInteger totalcombines() {
        return this.totalcombines;
    }

    public void totalcombines_$eq(AtomicInteger atomicInteger) {
        this.totalcombines = atomicInteger;
    }
}
