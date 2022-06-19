package scala.runtime;

import scala.Function3;
import scala.Serializable;
import scala.collection.Iterator;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple3Zipped$$anonfun$exists$extension$1.class */
public final class Tuple3Zipped$$anonfun$exists$extension$1 extends AbstractFunction1<El1, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Iterator elems2$4;
    private final Iterator elems3$4;
    private final Function3 f$4;
    private final Object nonLocalReturnKey4$1;

    public Tuple3Zipped$$anonfun$exists$extension$1(Iterator iterator, Iterator iterator2, Function3 function3, Object obj) {
        this.elems2$4 = iterator;
        this.elems3$4 = iterator2;
        this.f$4 = function3;
        this.nonLocalReturnKey4$1 = obj;
    }

    @Override // scala.Function1
    public final void apply(El1 el1) {
        if (!this.elems2$4.hasNext() || !this.elems3$4.hasNext()) {
            throw new NonLocalReturnControl$mcZ$sp(this.nonLocalReturnKey4$1, false);
        }
        if (BoxesRunTime.unboxToBoolean(this.f$4.apply(el1, this.elems2$4.next(), this.elems3$4.next()))) {
            throw new NonLocalReturnControl$mcZ$sp(this.nonLocalReturnKey4$1, true);
        }
    }
}
