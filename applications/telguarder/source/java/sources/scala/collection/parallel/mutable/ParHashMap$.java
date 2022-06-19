package scala.collection.parallel.mutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.ParMapFactory;
import scala.collection.parallel.Combiner;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMap$.class */
public final class ParHashMap$ extends ParMapFactory<ParHashMap> implements Serializable {
    public static final ParHashMap$ MODULE$ = null;
    private int iters = 0;

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

    public int iters() {
        return this.iters;
    }

    public void iters_$eq(int i) {
        this.iters = i;
    }

    @Override // scala.collection.generic.ParMapFactory, scala.collection.generic.GenericParMapCompanion
    public <K, V> Combiner<Tuple2<K, V>, ParHashMap<K, V>> newCombiner() {
        return ParHashMapCombiner$.MODULE$.apply();
    }
}
