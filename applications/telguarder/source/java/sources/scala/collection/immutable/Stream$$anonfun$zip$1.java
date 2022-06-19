package scala.collection.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.GenIterable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$zip$1.class */
public final class Stream$$anonfun$zip$1 extends AbstractFunction0<Stream<Tuple2<A1, B>>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream $outer;
    private final GenIterable that$2;

    public Stream$$anonfun$zip$1(Stream stream, Stream<A> stream2) {
        Objects.requireNonNull(stream);
        this.$outer = stream;
        this.that$2 = stream2;
    }

    @Override // scala.Function0
    public final Stream<Tuple2<A1, B>> apply() {
        return (Stream) ((Stream) this.$outer.tail()).zip((GenIterable) this.that$2.tail(), Stream$.MODULE$.canBuildFrom());
    }
}
