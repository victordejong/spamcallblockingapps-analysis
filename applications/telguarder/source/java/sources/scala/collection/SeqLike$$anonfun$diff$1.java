package scala.collection;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.collection.mutable.Map;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$$anonfun$diff$1.class */
public final class SeqLike$$anonfun$diff$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$3;
    private final Map occ$1;

    public SeqLike$$anonfun$diff$1(SeqLike seqLike, Map map, Builder builder) {
        this.occ$1 = map;
        this.b$3 = builder;
    }

    @Override // scala.Function1
    public final Object apply(A a) {
        Builder builder;
        int unboxToInt = BoxesRunTime.unboxToInt(this.occ$1.apply(a));
        if (unboxToInt == 0) {
            builder = this.b$3.$plus$eq((Builder) a);
        } else {
            this.occ$1.update(a, BoxesRunTime.boxToInteger(unboxToInt - 1));
            builder = BoxedUnit.UNIT;
        }
        return builder;
    }
}
