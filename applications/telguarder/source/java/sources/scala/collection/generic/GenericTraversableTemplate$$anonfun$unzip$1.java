package scala.collection.generic;

import scala.Function1;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericTraversableTemplate$$anonfun$unzip$1.class */
public final class GenericTraversableTemplate$$anonfun$unzip$1 extends AbstractFunction1<A, Builder<A2, CC>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 asPair$1;
    private final Builder b1$1;
    private final Builder b2$1;

    public GenericTraversableTemplate$$anonfun$unzip$1(GenericTraversableTemplate genericTraversableTemplate, Builder builder, Builder builder2, Function1 function1) {
        this.b1$1 = builder;
        this.b2$1 = builder2;
        this.asPair$1 = function1;
    }

    @Override // scala.Function1
    public final Builder<A2, CC> apply(A a) {
        Tuple2 tuple2 = (Tuple2) this.asPair$1.apply(a);
        if (tuple2 != null) {
            Tuple2 tuple22 = new Tuple2(tuple2.mo269_1(), tuple2.mo268_2());
            Object mo269_1 = tuple22.mo269_1();
            Object mo268_2 = tuple22.mo268_2();
            this.b1$1.$plus$eq((Builder) mo269_1);
            return this.b2$1.$plus$eq((Builder) mo268_2);
        }
        throw new MatchError(tuple2);
    }
}
