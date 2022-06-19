package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.immutable.List;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMap$$anonfun$2.class */
public final class ParHashMap$$anonfun$2 extends AbstractFunction1<Object, List<String>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParHashMap $outer;

    public ParHashMap$$anonfun$2(ParHashMap<K, V> parHashMap) {
        Objects.requireNonNull(parHashMap);
        this.$outer = parHashMap;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final List<String> apply(int i) {
        return this.$outer.scala$collection$parallel$mutable$ParHashMap$$checkBucket(i);
    }
}
