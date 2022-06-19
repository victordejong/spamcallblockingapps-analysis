package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple6$.class */
public final class Tuple6$ implements Serializable {
    public static final Tuple6$ MODULE$ = null;

    static {
        new Tuple6$();
    }

    private Tuple6$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6> Tuple6<T1, T2, T3, T4, T5, T6> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) {
        return new Tuple6<>(t1, t2, t3, t4, t5, t6);
    }

    public final String toString() {
        return "Tuple6";
    }

    public <T1, T2, T3, T4, T5, T6> Option<Tuple6<T1, T2, T3, T4, T5, T6>> unapply(Tuple6<T1, T2, T3, T4, T5, T6> tuple6) {
        return tuple6 == null ? None$.MODULE$ : new Some(new Tuple6(tuple6.mo228_1(), tuple6.mo227_2(), tuple6.mo226_3(), tuple6.mo225_4(), tuple6.mo224_5(), tuple6.mo223_6()));
    }
}
