package scala.collection.generic;

import scala.Function1;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple3;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericTraversableTemplate$$anonfun$unzip3$1.class */
public final class GenericTraversableTemplate$$anonfun$unzip3$1 extends AbstractFunction1<A, Builder<A3, CC>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 asTriple$1;
    private final Builder b1$2;
    private final Builder b2$2;
    private final Builder b3$1;

    public GenericTraversableTemplate$$anonfun$unzip3$1(GenericTraversableTemplate genericTraversableTemplate, Builder builder, Builder builder2, Builder builder3, Function1 function1) {
        this.b1$2 = builder;
        this.b2$2 = builder2;
        this.b3$1 = builder3;
        this.asTriple$1 = function1;
    }

    @Override // scala.Function1
    public final Builder<A3, CC> apply(A a) {
        Tuple3 tuple3 = (Tuple3) this.asTriple$1.apply(a);
        if (tuple3 != null) {
            Tuple3 tuple32 = new Tuple3(tuple3.mo240_1(), tuple3.mo239_2(), tuple3.mo238_3());
            Object mo240_1 = tuple32.mo240_1();
            Object mo239_2 = tuple32.mo239_2();
            Object mo238_3 = tuple32.mo238_3();
            this.b1$2.$plus$eq((Builder) mo240_1);
            this.b2$2.$plus$eq((Builder) mo239_2);
            return this.b3$1.$plus$eq((Builder) mo238_3);
        }
        throw new MatchError(tuple3);
    }
}
