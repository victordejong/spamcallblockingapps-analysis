package scala.collection.parallel;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$$plus$plus$3.class */
public final class ParIterableLike$$anonfun$$plus$plus$3 extends AbstractFunction1<U, Builder<U, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ParIterableLike$$anonfun$$plus$plus$3(ParIterableLike parIterableLike, ParIterableLike<T, Repr, Sequential> parIterableLike2) {
        this.b$1 = parIterableLike2;
    }

    @Override // scala.Function1
    public final Builder<U, That> apply(U u) {
        return this.b$1.$plus$eq((Builder) u);
    }
}
