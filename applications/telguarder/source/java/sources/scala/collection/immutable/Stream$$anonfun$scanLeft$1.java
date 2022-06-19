package scala.collection.immutable;

import java.util.Objects;
import scala.Function2;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$scanLeft$1.class */
public final class Stream$$anonfun$scanLeft$1 extends AbstractFunction0<Stream<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream $outer;
    private final Function2 op$1;
    private final Object z$1;

    public Stream$$anonfun$scanLeft$1(Stream stream, Object obj, Function2 function2) {
        Objects.requireNonNull(stream);
        this.$outer = stream;
        this.z$1 = obj;
        this.op$1 = function2;
    }

    @Override // scala.Function0
    public final Stream<B> apply() {
        return (Stream) ((Stream) this.$outer.tail()).scanLeft(this.op$1.apply(this.z$1, this.$outer.head()), this.op$1, Stream$.MODULE$.canBuildFrom());
    }
}
