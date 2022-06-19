package scala.collection.immutable;

import scala.Function3;
import scala.Serializable;
import scala.collection.immutable.IntMap;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMap$$anonfun$unionWith$1.class */
public final class IntMap$$anonfun$unionWith$1 extends AbstractFunction2<S, S, S> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function3 f$1;
    private final IntMap.Tip x6$1;

    public IntMap$$anonfun$unionWith$1(IntMap intMap, Function3 function3, IntMap.Tip tip) {
        this.f$1 = function3;
        this.x6$1 = tip;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [S, java.lang.Object] */
    @Override // scala.Function2
    public final S apply(S s, S s2) {
        return this.f$1.apply(BoxesRunTime.boxToInteger(this.x6$1.key()), s2, s);
    }
}
