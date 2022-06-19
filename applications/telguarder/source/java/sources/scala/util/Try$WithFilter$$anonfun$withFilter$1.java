package scala.util;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/util/Try$WithFilter$$anonfun$withFilter$1.class */
public final class Try$WithFilter$$anonfun$withFilter$1 extends AbstractFunction1<T, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Try.WithFilter $outer;
    private final Function1 q$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Try$WithFilter$$anonfun$withFilter$1(Try.WithFilter withFilter, Try<T>.WithFilter withFilter2) {
        Objects.requireNonNull(withFilter);
        this.$outer = withFilter;
        this.q$1 = withFilter2;
    }

    @Override // scala.Function1
    public final boolean apply(T t) {
        return BoxesRunTime.unboxToBoolean(this.$outer.scala$util$Try$WithFilter$$p.apply(t)) && BoxesRunTime.unboxToBoolean(this.q$1.apply(t));
    }
}
