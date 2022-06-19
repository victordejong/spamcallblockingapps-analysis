package scala.util.control;

import scala.Function1;
import scala.MatchError;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.util.control.TailCalls;
/* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$TailRec$$anonfun$flatMap$2.class */
public final class TailCalls$TailRec$$anonfun$flatMap$2 extends AbstractFunction1<Object, TailCalls.TailRec<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$2;
    private final TailCalls.Cont x5$1;

    public TailCalls$TailRec$$anonfun$flatMap$2(TailCalls.TailRec tailRec, Function1 function1, TailCalls.Cont cont) {
        this.f$2 = function1;
        this.x5$1 = cont;
    }

    @Override // scala.Function1
    public final TailCalls.TailRec<B> apply(Object obj) {
        TailCalls.TailRec tailRec;
        TailCalls.TailRec tailRec2 = (TailCalls.TailRec) this.x5$1.m2f().apply(obj);
        Function1 function1 = this.f$2;
        if (tailRec2 instanceof TailCalls.Done) {
            tailRec = new TailCalls.Call(new TailCalls$TailRec$$anonfun$flatMap$1(tailRec2, function1, (TailCalls.Done) tailRec2));
        } else if (tailRec2 instanceof TailCalls.Call) {
            tailRec = new TailCalls.Cont((TailCalls.Call) tailRec2, function1);
        } else if (!(tailRec2 instanceof TailCalls.Cont)) {
            throw new MatchError(tailRec2);
        } else {
            TailCalls.Cont cont = (TailCalls.Cont) tailRec2;
            tailRec = new TailCalls.Cont(cont.m3a(), new TailCalls$TailRec$$anonfun$flatMap$2(tailRec2, function1, cont));
        }
        return tailRec;
    }
}
