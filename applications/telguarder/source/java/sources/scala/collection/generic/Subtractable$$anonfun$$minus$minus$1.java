package scala.collection.generic;

import scala.Serializable;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/Subtractable$$anonfun$$minus$minus$1.class */
public final class Subtractable$$anonfun$$minus$minus$1 extends AbstractFunction2<Repr, A, Repr> implements Serializable {
    public static final long serialVersionUID = 0;

    public Subtractable$$anonfun$$minus$minus$1(Subtractable<A, Repr> subtractable) {
    }

    public final Subtractable apply(Subtractable subtractable, Object obj) {
        return subtractable.$minus(obj);
    }
}
