package scala.collection.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/TreeMap$$anonfun$$plus$plus$1.class */
public final class TreeMap$$anonfun$$plus$plus$1 extends AbstractFunction2<TreeMap<A, B1>, Tuple2<A, B1>, TreeMap<A, B1>> implements Serializable {
    public static final long serialVersionUID = 0;

    public TreeMap$$anonfun$$plus$plus$1(TreeMap<A, B> treeMap) {
    }

    public final TreeMap<A, B1> apply(TreeMap<A, B1> treeMap, Tuple2<A, B1> tuple2) {
        return treeMap.$plus((Tuple2) tuple2);
    }
}
