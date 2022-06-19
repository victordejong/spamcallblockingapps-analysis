package scala.util.control;

import scala.Function0;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.util.control.TailCalls;
/* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$Call$.class */
public class TailCalls$Call$ implements Serializable {
    public static final TailCalls$Call$ MODULE$ = null;

    static {
        new TailCalls$Call$();
    }

    public TailCalls$Call$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> TailCalls.Call<A> apply(Function0<TailCalls.TailRec<A>> function0) {
        return new TailCalls.Call<>(function0);
    }

    public final String toString() {
        return "Call";
    }

    public <A> Option<Function0<TailCalls.TailRec<A>>> unapply(TailCalls.Call<A> call) {
        return call == null ? None$.MODULE$ : new Some(call.rest());
    }
}
