package scala.collection.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$init$1.class */
public final class Stream$$anonfun$init$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream $outer;

    public Stream$$anonfun$init$1(Stream<A> stream) {
        Objects.requireNonNull(stream);
        this.$outer = stream;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return ((Stream) this.$outer.tail()).init();
    }
}
