package scala.collection.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1.class */
public final class Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream $outer;
    private final Stream rest$2;
    private final List stub0$1;
    private final List stub1$1;

    public Stream$$anonfun$scala$collection$immutable$Stream$$advance$1$1(Stream stream, List list, List list2, Stream stream2) {
        Objects.requireNonNull(stream);
        this.$outer = stream;
        this.stub0$1 = list;
        this.stub1$1 = list2;
        this.rest$2 = stream2;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return this.$outer.scala$collection$immutable$Stream$$advance$1((List) this.stub0$1.tail(), this.stub1$1.$colon$colon(this.rest$2.head()), (Stream) this.rest$2.tail());
    }
}
