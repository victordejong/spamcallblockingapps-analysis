package scala.collection.mutable;

import scala.Function1;
import scala.Predef$;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayOps$$anonfun$transpose$1.class */
public final class ArrayOps$$anonfun$transpose$1 extends AbstractFunction1<T, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 asArray$1;
    public final ArrayBuilder[] bs$1;

    public ArrayOps$$anonfun$transpose$1(ArrayOps arrayOps, ArrayBuilder[] arrayBuilderArr, Function1 function1) {
        this.bs$1 = arrayBuilderArr;
        this.asArray$1 = function1;
    }

    @Override // scala.Function1
    public final void apply(T t) {
        Predef$.MODULE$.genericArrayOps(this.asArray$1.apply(t)).foreach(new ArrayOps$$anonfun$transpose$1$$anonfun$apply$1(this, IntRef.create(0)));
    }
}
