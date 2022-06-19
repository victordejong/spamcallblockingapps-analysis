package scala;

import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Tuple1$.class */
public final class Tuple1$ implements Serializable {
    public static final Tuple1$ MODULE$ = null;

    static {
        new Tuple1$();
    }

    private Tuple1$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1> Tuple1<T1> apply(T1 t1) {
        return new Tuple1<>(t1);
    }

    public Tuple1<Object> apply$mDc$sp(double d) {
        return new Tuple1$mcD$sp(d);
    }

    public Tuple1<Object> apply$mIc$sp(int i) {
        return new Tuple1$mcI$sp(i);
    }

    public Tuple1<Object> apply$mJc$sp(long j) {
        return new Tuple1$mcJ$sp(j);
    }

    public final String toString() {
        return "Tuple1";
    }

    public <T1> Option<T1> unapply(Tuple1<T1> tuple1) {
        return tuple1 == null ? None$.MODULE$ : new Some(tuple1.mo360_1());
    }

    public Option<Object> unapply$mDc$sp(Tuple1<Object> tuple1) {
        return tuple1 == null ? None$.MODULE$ : new Some(BoxesRunTime.boxToDouble(tuple1._1$mcD$sp()));
    }

    public Option<Object> unapply$mIc$sp(Tuple1<Object> tuple1) {
        return tuple1 == null ? None$.MODULE$ : new Some(BoxesRunTime.boxToInteger(tuple1._1$mcI$sp()));
    }

    public Option<Object> unapply$mJc$sp(Tuple1<Object> tuple1) {
        return tuple1 == null ? None$.MODULE$ : new Some(BoxesRunTime.boxToLong(tuple1._1$mcJ$sp()));
    }
}
