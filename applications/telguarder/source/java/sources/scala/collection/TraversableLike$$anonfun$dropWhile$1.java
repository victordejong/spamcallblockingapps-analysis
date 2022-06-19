package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BooleanRef;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$dropWhile$1.class */
public final class TraversableLike$$anonfun$dropWhile$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$11;
    private final BooleanRef go$1;
    private final Function1 p$7;

    public TraversableLike$$anonfun$dropWhile$1(TraversableLike traversableLike, Builder builder, BooleanRef booleanRef, Function1 function1) {
        this.b$11 = builder;
        this.go$1 = booleanRef;
        this.p$7 = function1;
    }

    @Override // scala.Function1
    public final Object apply(A a) {
        if (!this.go$1.elem && !BoxesRunTime.unboxToBoolean(this.p$7.apply(a))) {
            this.go$1.elem = true;
        }
        return this.go$1.elem ? this.b$11.$plus$eq((Builder) a) : BoxedUnit.UNIT;
    }
}
