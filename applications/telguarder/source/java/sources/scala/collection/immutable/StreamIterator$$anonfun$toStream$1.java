package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamIterator$$anonfun$toStream$1.class */
public final class StreamIterator$$anonfun$toStream$1 extends AbstractFunction0<Stream<Nothing$>> implements Serializable {
    public static final long serialVersionUID = 0;

    public StreamIterator$$anonfun$toStream$1(StreamIterator<A> streamIterator) {
    }

    @Override // scala.Function0
    public final Stream<Nothing$> apply() {
        return Stream$.MODULE$.empty();
    }
}
