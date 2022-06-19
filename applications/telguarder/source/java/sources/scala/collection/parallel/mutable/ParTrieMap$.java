package scala.collection.parallel.mutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.ParMapFactory;
import scala.collection.parallel.Combiner;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParTrieMap$.class */
public final class ParTrieMap$ extends ParMapFactory<ParTrieMap> implements Serializable {
    public static final ParTrieMap$ MODULE$ = null;

    static {
        new ParTrieMap$();
    }

    private ParTrieMap$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <K, V> CanCombineFrom<ParTrieMap<?, ?>, Tuple2<K, V>, ParTrieMap<K, V>> canBuildFrom() {
        return new ParMapFactory.CanCombineFromMap(this);
    }

    @Override // scala.collection.generic.GenMapFactory
    public <K, V> ParTrieMap<K, V> empty() {
        return new ParTrieMap<>();
    }

    @Override // scala.collection.generic.ParMapFactory, scala.collection.generic.GenericParMapCompanion
    public <K, V> Combiner<Tuple2<K, V>, ParTrieMap<K, V>> newCombiner() {
        return new ParTrieMap();
    }
}
