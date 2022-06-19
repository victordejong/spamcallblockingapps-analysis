package scala.runtime;

import scala.Function2;
import scala.Serializable;
import scala.collection.Iterator;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple2Zipped$$anonfun$foreach$extension$1.class */
public final class Tuple2Zipped$$anonfun$foreach$extension$1 extends AbstractFunction1<El1, U> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Iterator elems2$5;
    private final Function2 f$6;
    private final Object nonLocalReturnKey5$1;

    public Tuple2Zipped$$anonfun$foreach$extension$1(Iterator iterator, Function2 function2, Object obj) {
        this.elems2$5 = iterator;
        this.f$6 = function2;
        this.nonLocalReturnKey5$1 = obj;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [U, java.lang.Object] */
    @Override // scala.Function1
    public final U apply(El1 el1) {
        if (this.elems2$5.hasNext()) {
            return this.f$6.apply(el1, this.elems2$5.next());
        }
        throw new NonLocalReturnControl$mcV$sp(this.nonLocalReturnKey5$1, BoxedUnit.UNIT);
    }
}
