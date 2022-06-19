package scala.runtime;

import scala.Function2;
import scala.Serializable;
import scala.collection.Iterator;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple2Zipped$$anonfun$map$extension$1.class */
public final class Tuple2Zipped$$anonfun$map$extension$1 extends AbstractFunction1<El1, Builder<B, To>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$1;
    private final Iterator elems2$1;
    private final Function2 f$1;
    private final Object nonLocalReturnKey1$1;

    public Tuple2Zipped$$anonfun$map$extension$1(Builder builder, Iterator iterator, Function2 function2, Object obj) {
        this.b$1 = builder;
        this.elems2$1 = iterator;
        this.f$1 = function2;
        this.nonLocalReturnKey1$1 = obj;
    }

    @Override // scala.Function1
    public final Builder<B, To> apply(El1 el1) {
        if (this.elems2$1.hasNext()) {
            return this.b$1.$plus$eq((Builder) this.f$1.apply(el1, this.elems2$1.next()));
        }
        throw new NonLocalReturnControl(this.nonLocalReturnKey1$1, this.b$1.result());
    }
}
