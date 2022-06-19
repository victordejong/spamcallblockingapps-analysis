package scala.collection.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.immutable.ListMap;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/ListMap$Node$$anonfun$remove0$1.class */
public final class ListMap$Node$$anonfun$remove0$1 extends AbstractFunction2<ListMap<A, B1>, ListMap<A, B1>, ListMap<A, B1>> implements Serializable {
    public static final long serialVersionUID = 0;

    public ListMap$Node$$anonfun$remove0$1(ListMap<A, B>.Node<B1> node) {
    }

    public final ListMap<A, B1> apply(ListMap<A, B1> listMap, ListMap<A, B1> listMap2) {
        Tuple2 tuple2 = new Tuple2(listMap, listMap2);
        return new ListMap.Node((ListMap) tuple2.mo269_1(), ((ListMap) tuple2.mo268_2()).key(), ((ListMap) tuple2.mo268_2()).value());
    }
}
