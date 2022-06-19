package scala.collection.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.mutable.ListBuffer;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMap$$anonfun$toList$1.class */
public final class IntMap$$anonfun$toList$1 extends AbstractFunction1<Tuple2<Object, T>, ListBuffer<Tuple2<Object, T>>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ListBuffer buffer$1;

    /* JADX WARN: Multi-variable type inference failed */
    public IntMap$$anonfun$toList$1(IntMap intMap, IntMap<T> intMap2) {
        this.buffer$1 = intMap2;
    }

    public final ListBuffer<Tuple2<Object, T>> apply(Tuple2<Object, T> tuple2) {
        return this.buffer$1.$plus$eq((ListBuffer) tuple2);
    }
}
