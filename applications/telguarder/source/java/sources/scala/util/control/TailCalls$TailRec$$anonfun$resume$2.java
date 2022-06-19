package scala.util.control;

import scala.Function1;
import scala.MatchError;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.util.control.TailCalls;
/* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$TailRec$$anonfun$resume$2.class */
public final class TailCalls$TailRec$$anonfun$resume$2 extends AbstractFunction1<Object, TailCalls.TailRec<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final TailCalls.Cont x4$1;
    private final TailCalls.Cont x4$2;

    public TailCalls$TailRec$$anonfun$resume$2(TailCalls.TailRec tailRec, TailCalls.Cont cont, TailCalls.Cont cont2) {
        this.x4$1 = cont;
        this.x4$2 = cont2;
    }

    @Override // scala.Function1
    public final TailCalls.TailRec<A> apply(Object obj) {
        TailCalls.TailRec tailRec;
        TailCalls.TailRec tailRec2 = (TailCalls.TailRec) this.x4$1.m2f().apply(obj);
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
