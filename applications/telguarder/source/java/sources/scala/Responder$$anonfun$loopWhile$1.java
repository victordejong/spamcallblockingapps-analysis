package scala;

import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/Responder$$anonfun$loopWhile$1.class */
public final class Responder$$anonfun$loopWhile$1 extends AbstractFunction1<BoxedUnit, Responder<BoxedUnit>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function0 cond$1;
    private final Responder r$2;

    public Responder$$anonfun$loopWhile$1(Function0 function0, Responder responder) {
        this.cond$1 = function0;
        this.r$2 = responder;
    }

    public final Responder<BoxedUnit> apply(BoxedUnit boxedUnit) {
        return Responder$.MODULE$.loopWhile(this.cond$1, this.r$2).map(new Responder$$anonfun$loopWhile$1$$anonfun$apply$2(this));
    }
}
