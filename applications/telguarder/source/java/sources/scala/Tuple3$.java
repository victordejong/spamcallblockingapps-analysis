package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple3$.class */
public final class Tuple3$ implements Serializable {
    public static final Tuple3$ MODULE$ = null;

    static {
        new Tuple3$();
    }

    private Tuple3$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3> Tuple3<T1, T2, T3> apply(T1 t1, T2 t2, T3 t3) {
        return new Tuple3<>(t1, t2, t3);
    }

    public final String toString() {
        return "Tuple3";
    }

    public <T1, T2, T3> Option<Tuple3<T1, T2, T3>> unapply(Tuple3<T1, T2, T3> tuple3) {
        return tuple3 == null ? None$.MODULE$ : new Some(new Tuple3(tuple3.mo240_1(), tuple3.mo239_2(), tuple3.mo238_3()));
    }
}
