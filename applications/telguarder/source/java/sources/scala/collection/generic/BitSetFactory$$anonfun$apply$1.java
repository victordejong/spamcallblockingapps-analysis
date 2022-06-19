package scala.collection.generic;

import scala.Serializable;
import scala.collection.BitSet;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/BitSetFactory$$anonfun$apply$1.class */
public final class BitSetFactory$$anonfun$apply$1 extends AbstractFunction2<Coll, Object, Coll> implements Serializable {
    public static final long serialVersionUID = 0;

    public BitSetFactory$$anonfun$apply$1(BitSetFactory<Coll> bitSetFactory) {
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return apply((BitSet) obj, BoxesRunTime.unboxToInt(obj2));
    }

    public final BitSet apply(BitSet bitSet, int i) {
        return (BitSet) bitSet.$plus((BitSet) BoxesRunTime.boxToInteger(i));
    }
}
