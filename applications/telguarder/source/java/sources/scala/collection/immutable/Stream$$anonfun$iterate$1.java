package scala.collection.immutable;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$iterate$1.class */
public final class Stream$$anonfun$iterate$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$6;
    private final Object start$2;

    public Stream$$anonfun$iterate$1(Object obj, Function1 function1) {
        this.start$2 = obj;
        this.f$6 = function1;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return Stream$.MODULE$.iterate(this.f$6.apply(this.start$2), this.f$6);
    }
}
