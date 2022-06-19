package scala.collection.immutable;

import java.util.Objects;
import scala.Function0;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$append$1.class */
public final class Stream$$anonfun$append$1 extends AbstractFunction0<Stream<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream $outer;
    private final Function0 rest$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Stream$$anonfun$append$1(Stream stream, Stream<A> stream2) {
        Objects.requireNonNull(stream);
        this.$outer = stream;
        this.rest$1 = stream2;
    }

    @Override // scala.Function0
    public final Stream<B> apply() {
        return ((Stream) this.$outer.tail()).append(this.rest$1);
    }
}
