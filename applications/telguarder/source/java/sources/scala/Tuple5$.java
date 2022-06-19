package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple5$.class */
public final class Tuple5$ implements Serializable {
    public static final Tuple5$ MODULE$ = null;

    static {
        new Tuple5$();
    }

    private Tuple5$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5> Tuple5<T1, T2, T3, T4, T5> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5) {
        return new Tuple5<>(t1, t2, t3, t4, t5);
    }

    public final String toString() {
        return "Tuple5";
    }

    public <T1, T2, T3, T4, T5> Option<Tuple5<T1, T2, T3, T4, T5>> unapply(Tuple5<T1, T2, T3, T4, T5> tuple5) {
        return tuple5 == null ? None$.MODULE$ : new Some(new Tuple5(tuple5.mo233_1(), tuple5.mo232_2(), tuple5.mo231_3(), tuple5.mo230_4(), tuple5.mo229_5()));
    }
}
