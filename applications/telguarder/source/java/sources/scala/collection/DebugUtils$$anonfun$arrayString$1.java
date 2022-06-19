package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/DebugUtils$$anonfun$arrayString$1.class */
public final class DebugUtils$$anonfun$arrayString$1 extends AbstractFunction1<T, String> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1
    public final String apply(T t) {
        return t == 0 ? "n/a" : String.valueOf(t);
    }
}
