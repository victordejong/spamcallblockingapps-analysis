package scala.collection.convert;

import java.util.Collection;
import scala.Serializable;
import scala.collection.Iterable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsScala$$anonfun$collectionAsScalaIterableConverter$1.class */
public final class DecorateAsScala$$anonfun$collectionAsScalaIterableConverter$1 extends AbstractFunction0<Iterable<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Collection i$4;

    public DecorateAsScala$$anonfun$collectionAsScalaIterableConverter$1(DecorateAsScala decorateAsScala, Collection collection) {
        this.i$4 = collection;
    }

    @Override // scala.Function0
    public final Iterable<A> apply() {
        return WrapAsScala$.MODULE$.collectionAsScalaIterable(this.i$4);
    }
}
