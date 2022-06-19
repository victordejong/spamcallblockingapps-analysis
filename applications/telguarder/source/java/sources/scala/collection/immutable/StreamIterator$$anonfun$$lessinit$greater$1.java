package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamIterator$$anonfun$$lessinit$greater$1.class */
public final class StreamIterator$$anonfun$$lessinit$greater$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Stream self$1;

    /* JADX WARN: Multi-variable type inference failed */
    public StreamIterator$$anonfun$$lessinit$greater$1(StreamIterator streamIterator, StreamIterator<A> streamIterator2) {
        this.self$1 = streamIterator2;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return this.self$1;
    }
}
