package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$last$1.class */
public final class ParIterableLike$$anonfun$last$1 extends AbstractFunction1<T, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef lst$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ParIterableLike$$anonfun$last$1(ParIterableLike parIterableLike, ParIterableLike<T, Repr, Sequential> parIterableLike2) {
        this.lst$1 = parIterableLike2;
    }

    @Override // scala.Function1
    public final void apply(T t) {
        this.lst$1.elem = t;
    }
}
