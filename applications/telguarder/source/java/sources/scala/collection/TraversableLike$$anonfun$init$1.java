package scala.collection;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BooleanRef;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$init$1.class */
public final class TraversableLike$$anonfun$init$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$8;
    private final BooleanRef follow$1;
    private final ObjectRef lst$2;

    public TraversableLike$$anonfun$init$1(TraversableLike traversableLike, ObjectRef objectRef, BooleanRef booleanRef, Builder builder) {
        this.lst$2 = objectRef;
        this.follow$1 = booleanRef;
        this.b$8 = builder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.Function1
    public final void apply(A a) {
        if (this.follow$1.elem) {
            this.b$8.$plus$eq((Builder) this.lst$2.elem);
        } else {
            this.follow$1.elem = true;
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        this.lst$2.elem = a;
    }
}
