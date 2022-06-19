package scala.runtime;

import scala.Function3;
import scala.Serializable;
import scala.collection.Iterator;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Tuple3Zipped$$anonfun$map$extension$1.class */
public final class Tuple3Zipped$$anonfun$map$extension$1 extends AbstractFunction1<El1, Builder<B, To>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$1;
    private final Iterator elems2$1;
    private final Iterator elems3$1;
    private final Function3 f$1;
    private final Object nonLocalReturnKey1$1;

    public Tuple3Zipped$$anonfun$map$extension$1(Builder builder, Iterator iterator, Iterator iterator2, Function3 function3, Object obj) {
        this.b$1 = builder;
        this.elems2$1 = iterator;
        this.elems3$1 = iterator2;
        this.f$1 = function3;
        this.nonLocalReturnKey1$1 = obj;
    }

    @Override // scala.Function1
    public final Builder<B, To> apply(El1 el1) {
        if (!this.elems2$1.hasNext() || !this.elems3$1.hasNext()) {
            throw new NonLocalReturnControl(this.nonLocalReturnKey1$1, this.b$1.result());
        }
        return this.b$1.$plus$eq((Builder) this.f$1.apply(el1, this.elems2$1.next(), this.elems3$1.next()));
    }
}
