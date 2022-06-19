package scala;

import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/Responder$$anonfun$loop$1.class */
public final class Responder$$anonfun$loop$1 extends AbstractFunction1<BoxedUnit, Responder<Nothing$>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Responder r$1;

    public Responder$$anonfun$loop$1(Responder responder) {
        this.r$1 = responder;
    }

    public final Responder<Nothing$> apply(BoxedUnit boxedUnit) {
        return Responder$.MODULE$.loop(this.r$1).map(new Responder$$anonfun$loop$1$$anonfun$apply$1(this));
    }
}
