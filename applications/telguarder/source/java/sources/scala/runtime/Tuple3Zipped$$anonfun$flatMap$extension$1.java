package scala.runtime;

import scala.Function3;
import scala.Serializable;
import scala.collection.Iterator;
import scala.collection.TraversableOnce;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple3Zipped$$anonfun$flatMap$extension$1.class */
public final class Tuple3Zipped$$anonfun$flatMap$extension$1 extends AbstractFunction1<El1, Builder<B, To>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$2;
    private final Iterator elems2$2;
    private final Iterator elems3$2;
    private final Function3 f$2;
    private final Object nonLocalReturnKey2$1;

    public Tuple3Zipped$$anonfun$flatMap$extension$1(Builder builder, Iterator iterator, Iterator iterator2, Function3 function3, Object obj) {
        this.b$2 = builder;
        this.elems2$2 = iterator;
        this.elems3$2 = iterator2;
        this.f$2 = function3;
        this.nonLocalReturnKey2$1 = obj;
    }

    @Override // scala.Function1
    public final Builder<B, To> apply(El1 el1) {
        if (!this.elems2$2.hasNext() || !this.elems3$2.hasNext()) {
            throw new NonLocalReturnControl(this.nonLocalReturnKey2$1, this.b$2.result());
        }
        return (Builder) this.b$2.$plus$plus$eq((TraversableOnce) this.f$2.apply(el1, this.elems2$2.next(), this.elems3$2.next()));
    }
}
