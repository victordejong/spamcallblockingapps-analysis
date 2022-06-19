package scala.collection.convert;

import java.util.Iterator;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsJava$$anonfun$asJavaIteratorConverter$1.class */
public final class DecorateAsJava$$anonfun$asJavaIteratorConverter$1 extends AbstractFunction0<Iterator<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final scala.collection.Iterator i$1;

    public DecorateAsJava$$anonfun$asJavaIteratorConverter$1(DecorateAsJava decorateAsJava, scala.collection.Iterator iterator) {
        this.i$1 = iterator;
    }

    @Override // scala.Function0
    public final Iterator<A> apply() {
        return WrapAsJava$.MODULE$.asJavaIterator(this.i$1);
    }
}
