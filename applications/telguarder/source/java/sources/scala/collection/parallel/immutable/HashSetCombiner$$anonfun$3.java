package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.collection.immutable.HashSet;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashSetCombiner$$anonfun$3.class */
public final class HashSetCombiner$$anonfun$3 extends AbstractFunction2<Object, HashSet<T>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public HashSetCombiner$$anonfun$3(HashSetCombiner<T> hashSetCombiner) {
    }

    public final int apply(int i, HashSet<T> hashSet) {
        return i + hashSet.size();
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj), (HashSet) obj2));
    }
}
