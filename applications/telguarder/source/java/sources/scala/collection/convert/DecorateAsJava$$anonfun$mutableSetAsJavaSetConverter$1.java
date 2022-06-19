package scala.collection.convert;

import java.util.Set;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/DecorateAsJava$$anonfun$mutableSetAsJavaSetConverter$1.class */
public final class DecorateAsJava$$anonfun$mutableSetAsJavaSetConverter$1 extends AbstractFunction0<Set<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final scala.collection.mutable.Set s$1;

    public DecorateAsJava$$anonfun$mutableSetAsJavaSetConverter$1(DecorateAsJava decorateAsJava, scala.collection.mutable.Set set) {
        this.s$1 = set;
    }

    @Override // scala.Function0
    public final Set<A> apply() {
        return WrapAsJava$.MODULE$.mutableSetAsJavaSet(this.s$1);
    }
}
