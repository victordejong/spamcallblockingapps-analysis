package scala.collection.immutable;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$filteredTail$1.class */
public final class Stream$$anonfun$filteredTail$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 p$1;
    private final Stream stream$2;

    public Stream$$anonfun$filteredTail$1(Stream stream, Function1 function1) {
        this.stream$2 = stream;
        this.p$1 = function1;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return ((Stream) this.stream$2.tail()).filter(this.p$1);
    }
}
