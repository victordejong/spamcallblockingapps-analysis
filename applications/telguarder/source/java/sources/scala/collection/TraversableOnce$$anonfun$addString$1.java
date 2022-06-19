package scala.collection;

import scala.Serializable;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BooleanRef;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$addString$1.class */
public final class TraversableOnce$$anonfun$addString$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final StringBuilder b$2;
    private final BooleanRef first$4;
    private final String sep$1;

    public TraversableOnce$$anonfun$addString$1(TraversableOnce traversableOnce, BooleanRef booleanRef, StringBuilder stringBuilder, String str) {
        this.first$4 = booleanRef;
        this.b$2 = stringBuilder;
        this.sep$1 = str;
    }

    @Override // scala.Function1
    public final Object apply(A a) {
        BoxedUnit boxedUnit;
        if (this.first$4.elem) {
            this.b$2.append(a);
            this.first$4.elem = false;
            boxedUnit = BoxedUnit.UNIT;
        } else {
            this.b$2.append(this.sep$1);
            boxedUnit = this.b$2.append(a);
        }
        return boxedUnit;
    }
}
