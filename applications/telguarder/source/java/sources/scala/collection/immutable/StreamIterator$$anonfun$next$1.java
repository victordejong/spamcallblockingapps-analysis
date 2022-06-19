package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamIterator$$anonfun$next$1.class */
public final class StreamIterator$$anonfun$next$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Stream cur$1;

    /* JADX WARN: Multi-variable type inference failed */
    public StreamIterator$$anonfun$next$1(StreamIterator streamIterator, StreamIterator<A> streamIterator2) {
        this.cur$1 = streamIterator2;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return (Stream) this.cur$1.tail();
    }
}
