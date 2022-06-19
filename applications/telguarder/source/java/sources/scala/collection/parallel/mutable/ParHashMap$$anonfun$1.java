package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction2$mcIII$sp;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMap$$anonfun$1.class */
public final class ParHashMap$$anonfun$1 extends AbstractFunction2$mcIII$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParHashMap $outer;

    public ParHashMap$$anonfun$1(ParHashMap<K, V> parHashMap) {
        Objects.requireNonNull(parHashMap);
        this.$outer = parHashMap;
    }

    @Override // scala.Function2$mcIII$sp
    public final int apply(int i, int i2) {
        return apply$mcIII$sp(i, i2);
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2)));
    }

    @Override // scala.runtime.AbstractFunction2, scala.Function2
    public int apply$mcIII$sp(int i, int i2) {
        ParHashMap parHashMap = this.$outer;
        return i + parHashMap.scala$collection$parallel$mutable$ParHashMap$$count$1(parHashMap.table()[i2]);
    }
}
