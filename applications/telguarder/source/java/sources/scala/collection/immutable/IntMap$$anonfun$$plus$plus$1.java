package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction3;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMap$$anonfun$$plus$plus$1.class */
public final class IntMap$$anonfun$$plus$plus$1 extends AbstractFunction3<Object, S, S, S> implements Serializable {
    public static final long serialVersionUID = 0;

    public IntMap$$anonfun$$plus$plus$1(IntMap<T> intMap) {
    }

    public final S apply(int i, S s, S s2) {
        return s2;
    }

    @Override // scala.Function3
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2, Object obj3) {
        return apply(BoxesRunTime.unboxToInt(obj), obj2, obj3);
    }
}
