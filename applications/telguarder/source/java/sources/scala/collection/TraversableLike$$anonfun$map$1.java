package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$map$1.class */
public final class TraversableLike$$anonfun$map$1 extends AbstractFunction1<A, Builder<B, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$1;
    private final Function1 f$4;

    public TraversableLike$$anonfun$map$1(TraversableLike traversableLike, Builder builder, Function1 function1) {
        this.b$1 = builder;
        this.f$4 = function1;
    }

    @Override // scala.Function1
    public final Builder<B, That> apply(A a) {
        return this.b$1.$plus$eq((Builder) this.f$4.apply(a));
    }
}
