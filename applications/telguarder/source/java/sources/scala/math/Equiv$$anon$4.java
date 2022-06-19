package scala.math;

import scala.Function2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/math/Equiv$$anon$4.class */
public final class Equiv$$anon$4 implements Equiv<T> {
    private final Function2 cmp$2;

    public Equiv$$anon$4(Function2 function2) {
        this.cmp$2 = function2;
    }

    @Override // scala.math.Equiv
    public boolean equiv(T t, T t2) {
        return BoxesRunTime.unboxToBoolean(this.cmp$2.apply(t, t2));
    }
}
