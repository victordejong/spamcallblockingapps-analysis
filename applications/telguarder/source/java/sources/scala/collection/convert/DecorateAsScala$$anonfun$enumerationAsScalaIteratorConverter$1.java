package scala.collection.convert;

import java.util.Enumeration;
import scala.Serializable;
import scala.collection.Iterator;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsScala$$anonfun$enumerationAsScalaIteratorConverter$1.class */
public final class DecorateAsScala$$anonfun$enumerationAsScalaIteratorConverter$1 extends AbstractFunction0<Iterator<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Enumeration i$2;

    public DecorateAsScala$$anonfun$enumerationAsScalaIteratorConverter$1(DecorateAsScala decorateAsScala, Enumeration enumeration) {
        this.i$2 = enumeration;
    }

    @Override // scala.Function0
    public final Iterator<A> apply() {
        return WrapAsScala$.MODULE$.enumerationAsScalaIterator(this.i$2);
    }
}
