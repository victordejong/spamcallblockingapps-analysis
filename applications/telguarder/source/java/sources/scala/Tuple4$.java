package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple4$.class */
public final class Tuple4$ implements Serializable {
    public static final Tuple4$ MODULE$ = null;

    static {
        new Tuple4$();
    }

    private Tuple4$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4> Tuple4<T1, T2, T3, T4> apply(T1 t1, T2 t2, T3 t3, T4 t4) {
        return new Tuple4<>(t1, t2, t3, t4);
    }

    public final String toString() {
        return "Tuple4";
    }

    public <T1, T2, T3, T4> Option<Tuple4<T1, T2, T3, T4>> unapply(Tuple4<T1, T2, T3, T4> tuple4) {
        return tuple4 == null ? None$.MODULE$ : new Some(new Tuple4(tuple4.mo237_1(), tuple4.mo236_2(), tuple4.mo235_3(), tuple4.mo234_4()));
    }
}
