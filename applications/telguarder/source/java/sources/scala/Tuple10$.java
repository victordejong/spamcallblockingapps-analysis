package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple10$.class */
public final class Tuple10$ implements Serializable {
    public static final Tuple10$ MODULE$ = null;

    static {
        new Tuple10$();
    }

    private Tuple10$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10) {
        return new Tuple10<>(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10);
    }

    public final String toString() {
        return "Tuple10";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> Option<Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>> unapply(Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> tuple10) {
        return tuple10 == null ? None$.MODULE$ : new Some(new Tuple10(tuple10.mo359_1(), tuple10.mo358_2(), tuple10.mo357_3(), tuple10.mo356_4(), tuple10.mo355_5(), tuple10.mo354_6(), tuple10.mo353_7(), tuple10.mo352_8(), tuple10.mo351_9(), tuple10._10()));
    }
}
