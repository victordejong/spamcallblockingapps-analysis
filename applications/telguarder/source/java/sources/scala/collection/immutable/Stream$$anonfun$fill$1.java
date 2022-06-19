package scala.collection.immutable;

import scala.Function0;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$fill$1.class */
public final class Stream$$anonfun$fill$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 elem$2;
    private final int n$2;

    public Stream$$anonfun$fill$1(int i, Function0 function0) {
        this.n$2 = i;
        this.elem$2 = function0;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return Stream$.MODULE$.fill(this.n$2 - 1, this.elem$2);
    }
}
