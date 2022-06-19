package scala.collection.generic;

import scala.Function1;
import scala.Serializable;
import scala.collection.GenTraversableOnce;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericTraversableTemplate$$anonfun$flatten$1.class */
public final class GenericTraversableTemplate$$anonfun$flatten$1 extends AbstractFunction1<A, Builder<B, CC>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 asTraversable$1;
    private final Builder b$1;

    public GenericTraversableTemplate$$anonfun$flatten$1(GenericTraversableTemplate genericTraversableTemplate, Builder builder, Function1 function1) {
        this.b$1 = builder;
        this.asTraversable$1 = function1;
    }

    @Override // scala.Function1
    public final Builder<B, CC> apply(A a) {
        return (Builder) this.b$1.$plus$plus$eq(((GenTraversableOnce) this.asTraversable$1.apply(a)).seq());
    }
}
