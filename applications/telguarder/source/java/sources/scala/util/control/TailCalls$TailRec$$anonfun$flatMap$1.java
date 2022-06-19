package scala.util.control;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
import scala.util.control.TailCalls;
/* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$TailRec$$anonfun$flatMap$1.class */
public final class TailCalls$TailRec$$anonfun$flatMap$1 extends AbstractFunction0<TailCalls.TailRec<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$2;
    private final TailCalls.Done x2$1;

    public TailCalls$TailRec$$anonfun$flatMap$1(TailCalls.TailRec tailRec, Function1 function1, TailCalls.Done done) {
        this.f$2 = function1;
        this.x2$1 = done;
    }

    @Override // scala.Function0
    public final TailCalls.TailRec<B> apply() {
        return (TailCalls.TailRec) this.f$2.apply(this.x2$1.value());
    }
}
