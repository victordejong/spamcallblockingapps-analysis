package scala.collection.convert;

import scala.Serializable;
import scala.collection.Iterable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsScala$$anonfun$iterableAsScalaIterableConverter$1.class */
public final class DecorateAsScala$$anonfun$iterableAsScalaIterableConverter$1 extends AbstractFunction0<Iterable<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Iterable i$3;

    public DecorateAsScala$$anonfun$iterableAsScalaIterableConverter$1(DecorateAsScala decorateAsScala, Iterable iterable) {
        this.i$3 = iterable;
    }

    @Override // scala.Function0
    public final Iterable<A> apply() {
        return WrapAsScala$.MODULE$.iterableAsScalaIterable(this.i$3);
    }
}
