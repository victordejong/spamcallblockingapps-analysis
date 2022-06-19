package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$flatMap$1.class */
public final class TraversableLike$$anonfun$flatMap$1 extends AbstractFunction1<A, Builder<B, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$2;
    private final Function1 f$5;

    public TraversableLike$$anonfun$flatMap$1(TraversableLike traversableLike, Builder builder, Function1 function1) {
        this.b$2 = builder;
        this.f$5 = function1;
    }

    @Override // scala.Function1
    public final Builder<B, That> apply(A a) {
        return (Builder) this.b$2.$plus$plus$eq(((GenTraversableOnce) this.f$5.apply(a)).seq());
    }
}
