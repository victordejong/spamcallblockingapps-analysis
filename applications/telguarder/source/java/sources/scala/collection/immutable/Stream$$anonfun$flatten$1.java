package scala.collection.immutable;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$flatten$1.class */
public final class Stream$$anonfun$flatten$1 extends AbstractFunction0<Stream<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 asTraversable$1;
    private final ObjectRef st$1;

    public Stream$$anonfun$flatten$1(Stream stream, Function1 function1, ObjectRef objectRef) {
        this.asTraversable$1 = function1;
        this.st$1 = objectRef;
    }

    @Override // scala.Function0
    public final Stream<B> apply() {
        return ((Stream) ((Stream) this.st$1.elem).tail()).flatten(this.asTraversable$1);
    }
}
