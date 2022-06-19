package scala.runtime;

import scala.Function2;
import scala.Serializable;
import scala.collection.Iterator;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple2Zipped$$anonfun$exists$extension$1.class */
public final class Tuple2Zipped$$anonfun$exists$extension$1 extends AbstractFunction1<El1, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Iterator elems2$4;
    private final Function2 f$4;
    private final Object nonLocalReturnKey4$1;

    public Tuple2Zipped$$anonfun$exists$extension$1(Iterator iterator, Function2 function2, Object obj) {
        this.elems2$4 = iterator;
        this.f$4 = function2;
        this.nonLocalReturnKey4$1 = obj;
    }

    @Override // scala.Function1
    public final void apply(El1 el1) {
        if (this.elems2$4.hasNext()) {
            if (BoxesRunTime.unboxToBoolean(this.f$4.apply(el1, this.elems2$4.next()))) {
                throw new NonLocalReturnControl$mcZ$sp(this.nonLocalReturnKey4$1, true);
            }
            return;
        }
        throw new NonLocalReturnControl$mcZ$sp(this.nonLocalReturnKey4$1, false);
    }
}
