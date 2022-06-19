package scala.collection;

import scala.Serializable;
import scala.collection.TraversableViewLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BooleanRef;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Transformed$$anonfun$lastOption$1.class */
public final class TraversableViewLike$Transformed$$anonfun$lastOption$1 extends AbstractFunction1<B, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final BooleanRef empty$1;
    private final ObjectRef result$1;

    public TraversableViewLike$Transformed$$anonfun$lastOption$1(TraversableViewLike.Transformed transformed, BooleanRef booleanRef, ObjectRef objectRef) {
        this.empty$1 = booleanRef;
        this.result$1 = objectRef;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.Function1
    public final void apply(B b) {
        this.empty$1.elem = false;
        this.result$1.elem = b;
    }
}
