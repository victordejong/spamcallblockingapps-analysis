package scala.runtime;

import scala.Function3;
import scala.Serializable;
import scala.collection.Iterator;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple3Zipped$$anonfun$filter$extension$1.class */
public final class Tuple3Zipped$$anonfun$filter$extension$1 extends AbstractFunction1<El1, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b1$1;
    private final Builder b2$1;
    private final Builder b3$1;
    private final Iterator elems2$3;
    private final Iterator elems3$3;
    private final Function3 f$3;
    private final Object nonLocalReturnKey3$1;

    public Tuple3Zipped$$anonfun$filter$extension$1(Builder builder, Builder builder2, Builder builder3, Iterator iterator, Iterator iterator2, Function3 function3, Object obj) {
        this.b1$1 = builder;
        this.b2$1 = builder2;
        this.b3$1 = builder3;
        this.elems2$3 = iterator;
        this.elems3$3 = iterator2;
        this.f$3 = function3;
        this.nonLocalReturnKey3$1 = obj;
    }

    @Override // scala.Function1
    public final Object apply(El1 el1) {
        Builder builder;
        if (!this.elems2$3.hasNext() || !this.elems3$3.hasNext()) {
            throw new NonLocalReturnControl(this.nonLocalReturnKey3$1, Tuple3Zipped$.MODULE$.scala$runtime$Tuple3Zipped$$result$1(this.b1$1, this.b2$1, this.b3$1));
        }
        Object next = this.elems2$3.next();
        Object next2 = this.elems3$3.next();
        if (BoxesRunTime.unboxToBoolean(this.f$3.apply(el1, next, next2))) {
            this.b1$1.$plus$eq((Builder) el1);
            this.b2$1.$plus$eq((Builder) next);
            builder = this.b3$1.$plus$eq((Builder) next2);
        } else {
            builder = BoxedUnit.UNIT;
        }
        return builder;
    }
}
