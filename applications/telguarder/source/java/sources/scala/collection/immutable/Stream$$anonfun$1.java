package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$1.class */
public final class Stream$$anonfun$1 extends AbstractFunction1<B, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef newHead$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Stream$$anonfun$1(Stream stream, Stream<A> stream2) {
        this.newHead$1 = stream2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.Function1
    public final void apply(B b) {
        this.newHead$1.elem = b;
    }
}
