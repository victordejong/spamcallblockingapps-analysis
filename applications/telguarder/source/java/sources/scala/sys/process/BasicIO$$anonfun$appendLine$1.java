package scala.sys.process;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/sys/process/BasicIO$$anonfun$appendLine$1.class */
public final class BasicIO$$anonfun$appendLine$1 extends AbstractFunction1<String, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Appendable buffer$1;

    public BasicIO$$anonfun$appendLine$1(Appendable appendable) {
        this.buffer$1 = appendable;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((String) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(String str) {
        this.buffer$1.append(str);
        this.buffer$1.append(BasicIO$.MODULE$.Newline());
    }
}
