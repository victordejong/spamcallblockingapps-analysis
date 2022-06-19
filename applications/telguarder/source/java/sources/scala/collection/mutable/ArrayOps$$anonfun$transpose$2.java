package scala.collection.mutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayOps$$anonfun$transpose$2.class */
public final class ArrayOps$$anonfun$transpose$2 extends AbstractFunction1<ArrayBuilder<U>, Builder<Object, Object[]>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder bb$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ArrayOps$$anonfun$transpose$2(ArrayOps arrayOps, ArrayOps<T> arrayOps2) {
        this.bb$1 = arrayOps2;
    }

    public final Builder<Object, Object[]> apply(ArrayBuilder<U> arrayBuilder) {
        return this.bb$1.$plus$eq((Builder) arrayBuilder.result());
    }
}
