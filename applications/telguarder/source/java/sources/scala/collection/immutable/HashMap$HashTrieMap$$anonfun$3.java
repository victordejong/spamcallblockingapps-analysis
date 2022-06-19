package scala.collection.immutable;

import scala.Serializable;
import scala.collection.immutable.HashMap;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashMap$HashTrieMap$$anonfun$3.class */
public final class HashMap$HashTrieMap$$anonfun$3 extends AbstractFunction2<Object, HashMap<A, B>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public HashMap$HashTrieMap$$anonfun$3(HashMap.HashTrieMap<A, B> hashTrieMap) {
    }

    public final int apply(int i, HashMap<A, B> hashMap) {
        return i + hashMap.size();
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToInt(obj), (HashMap) obj2));
    }
}
