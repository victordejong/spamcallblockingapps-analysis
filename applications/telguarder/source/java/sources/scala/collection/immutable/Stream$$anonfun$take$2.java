package scala.collection.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$take$2.class */
public final class Stream$$anonfun$take$2 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream $outer;
    private final int n$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Stream$$anonfun$take$2(Stream stream, Stream<A> stream2) {
        Objects.requireNonNull(stream);
        this.$outer = stream;
        this.n$1 = stream2;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return ((Stream) this.$outer.tail()).take(this.n$1 - 1);
    }
}
