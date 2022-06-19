package scala.collection.immutable;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$takeWhile$1.class */
public final class Stream$$anonfun$takeWhile$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream $outer;
    private final Function1 p$3;

    public Stream$$anonfun$takeWhile$1(Stream stream, Stream<A> stream2) {
        Objects.requireNonNull(stream);
        this.$outer = stream;
        this.p$3 = stream2;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return ((Stream) this.$outer.tail()).takeWhile(this.p$3);
    }
}
