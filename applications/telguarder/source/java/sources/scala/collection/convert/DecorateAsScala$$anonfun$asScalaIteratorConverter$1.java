package scala.collection.convert;

import scala.Serializable;
import scala.collection.Iterator;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsScala$$anonfun$asScalaIteratorConverter$1.class */
public final class DecorateAsScala$$anonfun$asScalaIteratorConverter$1 extends AbstractFunction0<Iterator<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final java.util.Iterator i$1;

    public DecorateAsScala$$anonfun$asScalaIteratorConverter$1(DecorateAsScala decorateAsScala, java.util.Iterator it) {
        this.i$1 = it;
    }

    @Override // scala.Function0
    public final Iterator<A> apply() {
        return WrapAsScala$.MODULE$.asScalaIterator(this.i$1);
    }
}
