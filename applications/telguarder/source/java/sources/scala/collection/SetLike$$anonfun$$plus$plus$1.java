package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/SetLike$$anonfun$$plus$plus$1.class */
public final class SetLike$$anonfun$$plus$plus$1 extends AbstractFunction2<This, A, This> implements Serializable {
    public static final long serialVersionUID = 0;

    public SetLike$$anonfun$$plus$plus$1(SetLike<A, This> setLike) {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.Set] */
    public final Set apply(Set set, Object obj) {
        return set.$plus((Set) obj);
    }
}
