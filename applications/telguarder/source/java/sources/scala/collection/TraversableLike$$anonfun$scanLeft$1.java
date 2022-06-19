package scala.collection;

import scala.Function2;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$scanLeft$1.class */
public final class TraversableLike$$anonfun$scanLeft$1 extends AbstractFunction1<A, Builder<B, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef acc$1;
    private final Builder b$6;
    private final Function2 op$1;

    public TraversableLike$$anonfun$scanLeft$1(TraversableLike traversableLike, Builder builder, ObjectRef objectRef, Function2 function2) {
        this.b$6 = builder;
        this.acc$1 = objectRef;
        this.op$1 = function2;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [T, java.lang.Object] */
    @Override // scala.Function1
    public final Builder<B, That> apply(A a) {
        ObjectRef objectRef = this.acc$1;
        objectRef.elem = this.op$1.apply(objectRef.elem, a);
        return this.b$6.$plus$eq((Builder) this.acc$1.elem);
    }
}
