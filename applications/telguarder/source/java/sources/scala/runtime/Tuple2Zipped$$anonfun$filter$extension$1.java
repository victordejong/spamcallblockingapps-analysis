package scala.runtime;

import scala.Function2;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple2Zipped$$anonfun$filter$extension$1.class */
public final class Tuple2Zipped$$anonfun$filter$extension$1 extends AbstractFunction1<El1, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b1$1;
    private final Builder b2$1;
    private final Iterator elems2$3;
    private final Function2 f$3;
    private final Object nonLocalReturnKey3$1;

    public Tuple2Zipped$$anonfun$filter$extension$1(Builder builder, Builder builder2, Iterator iterator, Function2 function2, Object obj) {
        this.b1$1 = builder;
        this.b2$1 = builder2;
        this.elems2$3 = iterator;
        this.f$3 = function2;
        this.nonLocalReturnKey3$1 = obj;
    }

    @Override // scala.Function1
    public final Object apply(El1 el1) {
        Builder builder;
        if (this.elems2$3.hasNext()) {
            Object next = this.elems2$3.next();
            if (BoxesRunTime.unboxToBoolean(this.f$3.apply(el1, next))) {
                this.b1$1.$plus$eq((Builder) el1);
                builder = this.b2$1.$plus$eq((Builder) next);
            } else {
                builder = BoxedUnit.UNIT;
            }
            return builder;
        }
        throw new NonLocalReturnControl(this.nonLocalReturnKey3$1, new Tuple2(this.b1$1.result(), this.b2$1.result()));
    }
}
