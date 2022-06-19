package scala.runtime;

import scala.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/ScalaRunTime$$anonfun$toArray$1.class */
public final class ScalaRunTime$$anonfun$toArray$1 extends AbstractFunction1<T, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object[] arr$1;
    private final IntRef i$1;

    public ScalaRunTime$$anonfun$toArray$1(Object[] objArr, IntRef intRef) {
        this.arr$1 = objArr;
        this.i$1 = intRef;
    }

    @Override // scala.Function1
    public final void apply(T t) {
        this.arr$1[this.i$1.elem] = t;
        this.i$1.elem++;
    }
}
