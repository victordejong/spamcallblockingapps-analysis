package scala.collection.immutable;

import scala.PartialFunction;
import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$collectedTail$1.class */
public final class Stream$$anonfun$collectedTail$1 extends AbstractFunction0<Stream<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final CanBuildFrom bf$1;
    private final PartialFunction pf$1;
    private final Stream stream$1;

    public Stream$$anonfun$collectedTail$1(Stream stream, PartialFunction partialFunction, CanBuildFrom canBuildFrom) {
        this.stream$1 = stream;
        this.pf$1 = partialFunction;
        this.bf$1 = canBuildFrom;
    }

    @Override // scala.Function0
    public final Stream<B> apply() {
        return (Stream) ((Stream) this.stream$1.tail()).collect(this.pf$1, this.bf$1);
    }
}
