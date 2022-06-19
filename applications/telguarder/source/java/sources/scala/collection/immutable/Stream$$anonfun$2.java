package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$2.class */
public final class Stream$$anonfun$2 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef result$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Stream$$anonfun$2(Stream stream, Stream<A> stream2) {
        this.result$1 = stream2;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return (Stream) this.result$1.elem;
    }
}
