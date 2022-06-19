package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction3;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMap$$anonfun$intersection$1.class */
public final class LongMap$$anonfun$intersection$1 extends AbstractFunction3<Object, T, R, T> implements Serializable {
    public static final long serialVersionUID = 0;

    public LongMap$$anonfun$intersection$1(LongMap<T> longMap) {
    }

    public final T apply(long j, T t, R r) {
        return t;
    }

    @Override // scala.Function3
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2, Object obj3) {
        return apply(BoxesRunTime.unboxToLong(obj), (long) obj2, obj3);
    }
}
