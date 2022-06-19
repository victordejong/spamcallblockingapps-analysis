package scala.collection.immutable;

import scala.collection.immutable.NumericRange;
import scala.math.Numeric$IntIsIntegral$;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Range$Int$.class */
public class Range$Int$ {
    public static final Range$Int$ MODULE$ = null;

    static {
        new Range$Int$();
    }

    public Range$Int$() {
        MODULE$ = this;
    }

    public NumericRange.Exclusive<Object> apply(int i, int i2, int i3) {
        return NumericRange$.MODULE$.apply(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2), BoxesRunTime.boxToInteger(i3), Numeric$IntIsIntegral$.MODULE$);
    }

    public NumericRange.Inclusive<Object> inclusive(int i, int i2, int i3) {
        return NumericRange$.MODULE$.inclusive(BoxesRunTime.boxToInteger(i), BoxesRunTime.boxToInteger(i2), BoxesRunTime.boxToInteger(i3), Numeric$IntIsIntegral$.MODULE$);
    }
}
