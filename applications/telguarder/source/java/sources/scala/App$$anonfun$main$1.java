package scala;

import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/App$$anonfun$main$1.class */
public final class App$$anonfun$main$1 extends AbstractFunction1<Function0<BoxedUnit>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;

    public App$$anonfun$main$1(App app) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Function0) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Function0<BoxedUnit> function0) {
        function0.apply$mcV$sp();
    }
}
