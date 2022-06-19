package scala.util.control;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.util.control.TailCalls;
/* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$TailRec$$anonfun$map$1.class */
public final class TailCalls$TailRec$$anonfun$map$1 extends AbstractFunction1<A, TailCalls.Call<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final Function1 f$1;

    /* JADX WARN: Multi-variable type inference failed */
    public TailCalls$TailRec$$anonfun$map$1(TailCalls.TailRec tailRec, TailCalls.TailRec<A> tailRec2) {
        this.f$1 = tailRec2;
    }

    @Override // scala.Function1
    public final TailCalls.Call<B> apply(A a) {
        return new TailCalls.Call<>(new TailCalls$TailRec$$anonfun$map$1$$anonfun$apply$1(this, a));
    }
}
