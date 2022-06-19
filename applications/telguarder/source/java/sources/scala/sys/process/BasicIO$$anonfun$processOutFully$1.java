package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$$anonfun$processOutFully$1.class */
public final class BasicIO$$anonfun$processOutFully$1 extends AbstractFunction1<String, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ProcessLogger log$2;

    public BasicIO$$anonfun$processOutFully$1(ProcessLogger processLogger) {
        this.log$2 = processLogger;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((String) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(String str) {
        this.log$2.out(new BasicIO$$anonfun$processOutFully$1$$anonfun$apply$5(this, str));
    }
}
