package scala.collection;

import scala.Predef$;
import scala.Serializable;
import scala.StringContext;
import scala.runtime.AbstractFunction0;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$$anonfun$copyToArray$1.class */
public final class Iterator$$anonfun$copyToArray$1 extends AbstractFunction0<String> implements Serializable {
    public static final long serialVersionUID = 0;
    public final int start$4;
    public final Object xs$2;

    public Iterator$$anonfun$copyToArray$1(Iterator iterator, Object obj, int i) {
        this.xs$2 = obj;
        this.start$4 = i;
    }

    @Override // scala.Function0
    public final String apply() {
        return new StringContext(Predef$.MODULE$.wrapRefArray(new String[]{"start ", " out of range ", ""})).m361s(Predef$.MODULE$.genericWrapArray(new Object[]{BoxesRunTime.boxToInteger(this.start$4), BoxesRunTime.boxToInteger(ScalaRunTime$.MODULE$.array_length(this.xs$2))}));
    }
}
