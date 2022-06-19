package scala.collection;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.collection.mutable.Map;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$$anonfun$intersect$1.class */
public final class SeqLike$$anonfun$intersect$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$4;
    private final Map occ$2;

    public SeqLike$$anonfun$intersect$1(SeqLike seqLike, Map map, Builder builder) {
        this.occ$2 = map;
        this.b$4 = builder;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        int unboxToInt = BoxesRunTime.unboxToInt(this.occ$2.apply(a));
        if (unboxToInt > 0) {
            this.b$4.$plus$eq((Builder) a);
            this.occ$2.update(a, BoxesRunTime.boxToInteger(unboxToInt - 1));
        }
    }
}
