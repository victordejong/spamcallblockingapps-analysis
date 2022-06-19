package scala.collection.immutable;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1.class */
public final class Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$7;
    private final int i$1;
    private final int n$3;

    public Stream$$anonfun$scala$collection$immutable$Stream$$loop$4$1(int i, Function1 function1, int i2) {
        this.n$3 = i;
        this.f$7 = function1;
        this.i$1 = i2;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return Stream$.MODULE$.scala$collection$immutable$Stream$$loop$4(this.i$1 + 1, this.n$3, this.f$7);
    }
}
