package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$$anonfun$sorted$1.class */
public final class SeqLike$$anonfun$sorted$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object[] arr$1;
    private final IntRef i$1;

    public SeqLike$$anonfun$sorted$1(SeqLike seqLike, Object[] objArr, IntRef intRef) {
        this.arr$1 = objArr;
        this.i$1 = intRef;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        this.arr$1[this.i$1.elem] = a;
        this.i$1.elem++;
    }
}
