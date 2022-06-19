package scala;

import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$apply$5.class */
public final class Array$$anonfun$apply$5 extends AbstractFunction1<T, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object array$1;
    private final IntRef i$1;

    public Array$$anonfun$apply$5(Object obj, IntRef intRef) {
        this.array$1 = obj;
        this.i$1 = intRef;
    }

    @Override // scala.Function1
    public final void apply(T t) {
        ScalaRunTime$.MODULE$.array_update(this.array$1, this.i$1.elem, t);
        this.i$1.elem++;
    }
}
