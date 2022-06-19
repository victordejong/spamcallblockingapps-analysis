package scala;

import scala.runtime.AbstractFunction1;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/Array$$anonfun$concat$1.class */
public final class Array$$anonfun$concat$1 extends AbstractFunction1<Object, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1
    public final int apply(Object obj) {
        return ScalaRunTime$.MODULE$.array_length(obj);
    }
}
