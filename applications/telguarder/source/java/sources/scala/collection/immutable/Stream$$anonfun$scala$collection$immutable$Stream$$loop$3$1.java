package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1.class */
public final class Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1 extends AbstractFunction0<B> implements Serializable {
    public static final long serialVersionUID = 0;
    public final Object elem$1;

    public Stream$$anonfun$scala$collection$immutable$Stream$$loop$3$1(Stream stream, Stream<A> stream2) {
        this.elem$1 = stream2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
    @Override // scala.Function0
    public final B apply() {
        return this.elem$1;
    }
}
