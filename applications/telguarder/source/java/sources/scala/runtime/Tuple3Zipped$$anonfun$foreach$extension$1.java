package scala.runtime;

import scala.Function3;
import scala.Serializable;
import scala.collection.Iterator;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple3Zipped$$anonfun$foreach$extension$1.class */
public final class Tuple3Zipped$$anonfun$foreach$extension$1 extends AbstractFunction1<El1, U> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Iterator elems2$5;
    private final Iterator elems3$5;
    private final Function3 f$6;
    private final Object nonLocalReturnKey5$1;

    public Tuple3Zipped$$anonfun$foreach$extension$1(Iterator iterator, Iterator iterator2, Function3 function3, Object obj) {
        this.elems2$5 = iterator;
        this.elems3$5 = iterator2;
        this.f$6 = function3;
        this.nonLocalReturnKey5$1 = obj;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [U, java.lang.Object] */
    @Override // scala.Function1
    public final U apply(El1 el1) {
        if (!this.elems2$5.hasNext() || !this.elems3$5.hasNext()) {
            throw new NonLocalReturnControl$mcV$sp(this.nonLocalReturnKey5$1, BoxedUnit.UNIT);
        }
        return this.f$6.apply(el1, this.elems2$5.next(), this.elems3$5.next());
    }
}
