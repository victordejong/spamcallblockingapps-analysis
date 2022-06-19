package scala.util.control;

import scala.Function1;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.util.control.TailCalls;
/* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$Cont$.class */
public class TailCalls$Cont$ implements Serializable {
    public static final TailCalls$Cont$ MODULE$ = null;

    static {
        new TailCalls$Cont$();
    }

    public TailCalls$Cont$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A, B> TailCalls.Cont<A, B> apply(TailCalls.TailRec<A> tailRec, Function1<A, TailCalls.TailRec<B>> function1) {
        return new TailCalls.Cont<>(tailRec, function1);
    }

    public final String toString() {
        return "Cont";
    }

    public <A, B> Option<Tuple2<TailCalls.TailRec<A>, Function1<A, TailCalls.TailRec<B>>>> unapply(TailCalls.Cont<A, B> cont) {
        return cont == null ? None$.MODULE$ : new Some(new Tuple2(cont.m3a(), cont.m2f()));
    }
}
