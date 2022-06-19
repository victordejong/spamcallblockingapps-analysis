package scala.collection.convert;

import java.util.Set;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsJava$$anonfun$setAsJavaSetConverter$1.class */
public final class DecorateAsJava$$anonfun$setAsJavaSetConverter$1 extends AbstractFunction0<Set<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final scala.collection.Set s$2;

    public DecorateAsJava$$anonfun$setAsJavaSetConverter$1(DecorateAsJava decorateAsJava, scala.collection.Set set) {
        this.s$2 = set;
    }

    @Override // scala.Function0
    public final Set<A> apply() {
        return WrapAsJava$.MODULE$.setAsJavaSet(this.s$2);
    }
}
