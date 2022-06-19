package scala.collection.convert;

import scala.Serializable;
import scala.collection.mutable.Set;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsScala$$anonfun$asScalaSetConverter$1.class */
public final class DecorateAsScala$$anonfun$asScalaSetConverter$1 extends AbstractFunction0<Set<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final java.util.Set s$1;

    public DecorateAsScala$$anonfun$asScalaSetConverter$1(DecorateAsScala decorateAsScala, java.util.Set set) {
        this.s$1 = set;
    }

    @Override // scala.Function0
    public final Set<A> apply() {
        return WrapAsScala$.MODULE$.asScalaSet(this.s$1);
    }
}
