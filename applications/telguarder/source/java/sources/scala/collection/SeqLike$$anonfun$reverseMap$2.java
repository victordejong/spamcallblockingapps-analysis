package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$$anonfun$reverseMap$2.class */
public final class SeqLike$$anonfun$reverseMap$2 extends AbstractFunction1<A, Builder<B, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final Builder b$2;
    public final Function1 f$1;

    public SeqLike$$anonfun$reverseMap$2(SeqLike seqLike, Builder builder, Function1 function1) {
        this.b$2 = builder;
        this.f$1 = function1;
    }

    @Override // scala.Function1
    public final Builder<B, That> apply(A a) {
        return this.b$2.$plus$eq((Builder) this.f$1.apply(a));
    }
}
