package scala.collection.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2.class */
public final class Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2 extends AbstractFunction0<Stream<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream $outer;
    private final Object elem$1;
    private final int len$1;
    private final Stream these$1;

    public Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$2(Stream stream, Object obj, int i, Stream stream2) {
        Objects.requireNonNull(stream);
        this.$outer = stream;
        this.elem$1 = obj;
        this.len$1 = i;
        this.these$1 = stream2;
    }

    @Override // scala.Function0
    public final Stream<B> apply() {
        return this.$outer.scala$collection$immutable$Stream$$loop$3(this.len$1 - 1, (Stream) this.these$1.tail(), this.elem$1);
    }
}
