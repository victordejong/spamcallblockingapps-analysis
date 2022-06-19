package scala.collection;

import scala.Serializable;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BooleanRef;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/ViewMkString$$anonfun$addString$1.class */
public final class ViewMkString$$anonfun$addString$1 extends AbstractFunction1<A, StringBuilder> implements Serializable {
    public static final long serialVersionUID = 0;
    private final StringBuilder b$1;
    private final BooleanRef first$1;
    private final String sep$1;

    public ViewMkString$$anonfun$addString$1(ViewMkString viewMkString, BooleanRef booleanRef, StringBuilder stringBuilder, String str) {
        this.first$1 = booleanRef;
        this.b$1 = stringBuilder;
        this.sep$1 = str;
    }

    @Override // scala.Function1
    public final StringBuilder apply(A a) {
        if (this.first$1.elem) {
            this.first$1.elem = false;
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        } else {
            this.b$1.append(this.sep$1);
        }
        return this.b$1.append(a);
    }
}
