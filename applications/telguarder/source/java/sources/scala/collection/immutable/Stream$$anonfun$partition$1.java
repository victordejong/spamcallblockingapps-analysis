package scala.collection.immutable;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$partition$1.class */
public final class Stream$$anonfun$partition$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 p$2;

    public Stream$$anonfun$partition$1(Stream stream, Stream<A> stream2) {
        this.p$2 = stream2;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        return BoxesRunTime.unboxToBoolean(this.p$2.apply(a));
    }
}
