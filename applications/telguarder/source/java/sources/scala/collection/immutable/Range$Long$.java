package scala.collection.immutable;

import scala.collection.immutable.NumericRange;
import scala.math.Numeric$LongIsIntegral$;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Range$Long$.class */
public class Range$Long$ {
    public static final Range$Long$ MODULE$ = null;

    static {
        new Range$Long$();
    }

    public Range$Long$() {
        MODULE$ = this;
    }

    public NumericRange.Exclusive<Object> apply(long j, long j2, long j3) {
        return NumericRange$.MODULE$.apply(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToLong(j2), BoxesRunTime.boxToLong(j3), Numeric$LongIsIntegral$.MODULE$);
    }

    public NumericRange.Inclusive<Object> inclusive(long j, long j2, long j3) {
        return NumericRange$.MODULE$.inclusive(BoxesRunTime.boxToLong(j), BoxesRunTime.boxToLong(j2), BoxesRunTime.boxToLong(j3), Numeric$LongIsIntegral$.MODULE$);
    }
}
