package scala.collection.immutable;

import scala.Function0;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$continually$1.class */
public final class Stream$$anonfun$continually$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 elem$3;

    public Stream$$anonfun$continually$1(Function0 function0) {
        this.elem$3 = function0;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return Stream$.MODULE$.continually(this.elem$3);
    }
}
