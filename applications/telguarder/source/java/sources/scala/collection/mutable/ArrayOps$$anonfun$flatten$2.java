package scala.collection.mutable;

import scala.Function1;
import scala.Serializable;
import scala.collection.TraversableOnce;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayOps$$anonfun$flatten$2.class */
public final class ArrayOps$$anonfun$flatten$2 extends AbstractFunction1<T, ArrayBuilder<U>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 asTrav$1;
    private final ArrayBuilder b$1;

    public ArrayOps$$anonfun$flatten$2(ArrayOps arrayOps, ArrayBuilder arrayBuilder, Function1 function1) {
        this.b$1 = arrayBuilder;
        this.asTrav$1 = function1;
    }

    @Override // scala.Function1
    public final ArrayBuilder<U> apply(T t) {
        return (ArrayBuilder) this.b$1.$plus$plus$eq((TraversableOnce) this.asTrav$1.apply(t));
    }
}
