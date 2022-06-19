package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.collection.immutable.HashMap;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashMapCombiner$$anonfun$6.class */
public final class HashMapCombiner$$anonfun$6 extends AbstractFunction2<Object, HashMap<K, Object>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public HashMapCombiner$$anonfun$6(HashMapCombiner<K, V> hashMapCombiner) {
    }

    public final int apply(int i, HashMap<K, Object> hashMap) {
        return i + hashMap.size();
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj), (HashMap) obj2));
    }
}
