package scala.collection.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/ListMap$$anonfun$$plus$plus$1.class */
public final class ListMap$$anonfun$$plus$plus$1 extends AbstractFunction2<ListMap<A, B1>, Tuple2<A, B1>, ListMap<A, B1>> implements Serializable {
    public static final long serialVersionUID = 0;

    public ListMap$$anonfun$$plus$plus$1(ListMap<A, B> listMap) {
    }

    public final ListMap<A, B1> apply(ListMap<A, B1> listMap, Tuple2<A, B1> tuple2) {
        return listMap.$plus((Tuple2) tuple2);
    }
}
