package scala.runtime;

import scala.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/ScalaRunTime$$anonfun$arrayToString$1$1.class */
public final class ScalaRunTime$$anonfun$arrayToString$1$1 extends AbstractFunction1<Object, String> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public final String apply(int i) {
        return "()";
    }
}
