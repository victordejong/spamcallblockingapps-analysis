package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$$anonfun$processErrFully$1.class */
public final class BasicIO$$anonfun$processErrFully$1 extends AbstractFunction1<String, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ProcessLogger log$1;

    public BasicIO$$anonfun$processErrFully$1(ProcessLogger processLogger) {
        this.log$1 = processLogger;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((String) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(String str) {
        this.log$1.err(new BasicIO$$anonfun$processErrFully$1$$anonfun$apply$4(this, str));
    }
}
