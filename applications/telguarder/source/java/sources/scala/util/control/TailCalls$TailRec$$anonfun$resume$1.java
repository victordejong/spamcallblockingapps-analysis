package scala.util.control;

import scala.Function1;
import scala.MatchError;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
import scala.util.control.TailCalls;
/* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$TailRec$$anonfun$resume$1.class */
public final class TailCalls$TailRec$$anonfun$resume$1 extends AbstractFunction0<TailCalls.TailRec<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final TailCalls.Call x3$1;
    private final TailCalls.Cont x4$2;

    public TailCalls$TailRec$$anonfun$resume$1(TailCalls.TailRec tailRec, TailCalls.Call call, TailCalls.Cont cont) {
        this.x3$1 = call;
        this.x4$2 = cont;
    }

    @Override // scala.Function0
    public final TailCalls.TailRec<A> apply() {
        TailCalls.TailRec tailRec;
        TailCalls.TailRec tailRec2 = (TailCalls.TailRec) this.x3$1.rest().apply();
        Function1 m2f = this.x4$2.m2f();
        if (tailRec2 instanceof TailCalls.Done) {
            tailRec = new TailCalls.Call(new TailCalls$TailRec$$anonfun$flatMap$1(tailRec2, m2f, (TailCalls.Done) tailRec2));
        } else if (tailRec2 instanceof TailCalls.Call) {
            tailRec = new TailCalls.Cont((TailCalls.Call) tailRec2, m2f);
        } else if (!(tailRec2 instanceof TailCalls.Cont)) {
            throw new MatchError(tailRec2);
        } else {
            TailCalls.Cont cont = (TailCalls.Cont) tailRec2;
            tailRec = new TailCalls.Cont(cont.m3a(), new TailCalls$TailRec$$anonfun$flatMap$2(tailRec2, m2f, cont));
        }
        return tailRec;
    }
}
