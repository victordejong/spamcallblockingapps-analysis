package scala.collection;

import scala.Predef$$less$colon$less;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.immutable.Map;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$toMap$1.class */
public final class TraversableOnce$$anonfun$toMap$1 extends AbstractFunction1<A, Builder<Tuple2<T, U>, Map<T, U>>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$1;
    private final Predef$$less$colon$less ev$1;

    public TraversableOnce$$anonfun$toMap$1(TraversableOnce traversableOnce, Builder builder, Predef$$less$colon$less predef$$less$colon$less) {
        this.b$1 = builder;
        this.ev$1 = predef$$less$colon$less;
    }

    @Override // scala.Function1
    public final Builder<Tuple2<T, U>, Map<T, U>> apply(A a) {
        return this.b$1.$plus$eq((Builder) this.ev$1.apply(a));
    }
}
