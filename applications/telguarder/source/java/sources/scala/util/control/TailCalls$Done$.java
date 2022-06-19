package scala.util.control;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.util.control.TailCalls;
/* loaded from: classes3-dex2jar.jar:scala/util/control/TailCalls$Done$.class */
public class TailCalls$Done$ implements Serializable {
    public static final TailCalls$Done$ MODULE$ = null;

    static {
        new TailCalls$Done$();
    }

    public TailCalls$Done$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> TailCalls.Done<A> apply(A a) {
        return new TailCalls.Done<>(a);
    }

    public final String toString() {
        return "Done";
    }

    public <A> Option<A> unapply(TailCalls.Done<A> done) {
        return done == null ? None$.MODULE$ : new Some(done.value());
    }
}
