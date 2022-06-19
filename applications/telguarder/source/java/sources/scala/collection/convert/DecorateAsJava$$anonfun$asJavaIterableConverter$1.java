package scala.collection.convert;

import scala.Serializable;
import scala.collection.Iterable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsJava$$anonfun$asJavaIterableConverter$1.class */
public final class DecorateAsJava$$anonfun$asJavaIterableConverter$1 extends AbstractFunction0<Iterable<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Iterable i$2;

    public DecorateAsJava$$anonfun$asJavaIterableConverter$1(DecorateAsJava decorateAsJava, Iterable iterable) {
        this.i$2 = iterable;
    }

    @Override // scala.Function0
    public final Iterable<A> apply() {
        return WrapAsJava$.MODULE$.asJavaIterable(this.i$2);
    }
}
