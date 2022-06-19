package scala.util.control;

import scala.Function0;
import scala.util.control.TailCalls;
/* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$.class */
public final class TailCalls$ {
    public static final TailCalls$ MODULE$ = null;

    static {
        new TailCalls$();
    }

    private TailCalls$() {
        MODULE$ = this;
    }

    public <A> TailCalls.TailRec<A> done(A a) {
        return new TailCalls.Done(a);
    }

    public <A> TailCalls.TailRec<A> tailcall(Function0<TailCalls.TailRec<A>> function0) {
        return new TailCalls.Call(function0);
    }
}
