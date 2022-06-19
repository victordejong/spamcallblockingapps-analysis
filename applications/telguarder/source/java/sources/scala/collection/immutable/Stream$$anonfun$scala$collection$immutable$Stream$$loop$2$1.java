package scala.collection.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1.class */
public final class Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream $outer;
    private final Stream rest$3;
    private final Set seen$1;

    public Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1(Stream stream, Set set, Stream stream2) {
        Objects.requireNonNull(stream);
        this.$outer = stream;
        this.seen$1 = set;
        this.rest$3 = stream2;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return this.$outer.scala$collection$immutable$Stream$$loop$2((Set) this.seen$1.$plus((Set) this.rest$3.head()), (Stream) this.rest$3.tail());
    }
}
