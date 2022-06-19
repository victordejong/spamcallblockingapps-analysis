package scala.runtime;

import scala.Function2;
import scala.Serializable;
import scala.collection.Iterator;
import scala.collection.TraversableOnce;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple2Zipped$$anonfun$flatMap$extension$1.class */
public final class Tuple2Zipped$$anonfun$flatMap$extension$1 extends AbstractFunction1<El1, Builder<B, To>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$2;
    private final Iterator elems2$2;
    private final Function2 f$2;
    private final Object nonLocalReturnKey2$1;

    public Tuple2Zipped$$anonfun$flatMap$extension$1(Builder builder, Iterator iterator, Function2 function2, Object obj) {
        this.b$2 = builder;
        this.elems2$2 = iterator;
        this.f$2 = function2;
        this.nonLocalReturnKey2$1 = obj;
    }

    @Override // scala.Function1
    public final Builder<B, To> apply(El1 el1) {
        if (this.elems2$2.hasNext()) {
            return (Builder) this.b$2.$plus$plus$eq((TraversableOnce) this.f$2.apply(el1, this.elems2$2.next()));
        }
        throw new NonLocalReturnControl(this.nonLocalReturnKey2$1, this.b$2.result());
    }
}
