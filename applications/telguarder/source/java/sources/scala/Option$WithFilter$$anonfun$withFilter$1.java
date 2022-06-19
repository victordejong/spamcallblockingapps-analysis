package scala;

import java.util.Objects;
import scala.Option;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Option$WithFilter$$anonfun$withFilter$1.class */
public final class Option$WithFilter$$anonfun$withFilter$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Option.WithFilter $outer;
    private final Function1 q$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Option$WithFilter$$anonfun$withFilter$1(Option.WithFilter withFilter, Option<A>.WithFilter withFilter2) {
        Objects.requireNonNull(withFilter);
        this.$outer = withFilter;
        this.q$1 = withFilter2;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        return BoxesRunTime.unboxToBoolean(this.$outer.scala$Option$WithFilter$$p.apply(a)) && BoxesRunTime.unboxToBoolean(this.q$1.apply(a));
    }
}
