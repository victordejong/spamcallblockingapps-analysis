package scala.collection.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.GenTraversableOnce;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$$plus$plus$1.class */
public final class Stream$$anonfun$$plus$plus$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream $outer;
    private final GenTraversableOnce that$1;

    public Stream$$anonfun$$plus$plus$1(Stream stream, Stream<A> stream2) {
        Objects.requireNonNull(stream);
        this.$outer = stream;
        this.that$1 = stream2;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return (Stream) ((Stream) this.$outer.tail()).$plus$plus(this.that$1, Stream$.MODULE$.canBuildFrom());
    }
}
