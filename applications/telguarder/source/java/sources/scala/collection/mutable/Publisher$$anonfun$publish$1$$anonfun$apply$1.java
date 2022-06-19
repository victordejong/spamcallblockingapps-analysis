package scala.collection.mutable;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Publisher$$anonfun$publish$1$$anonfun$apply$1.class */
public final class Publisher$$anonfun$publish$1$$anonfun$apply$1 extends AbstractFunction1<Function1<Evt, Object>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Publisher$$anonfun$publish$1 $outer;

    public Publisher$$anonfun$publish$1$$anonfun$apply$1(Publisher$$anonfun$publish$1 publisher$$anonfun$publish$1) {
        Objects.requireNonNull(publisher$$anonfun$publish$1);
        this.$outer = publisher$$anonfun$publish$1;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Function1) obj));
    }

    public final boolean apply(Function1<Evt, Object> function1) {
        return BoxesRunTime.unboxToBoolean(function1.apply(this.$outer.event$1));
    }
}
