package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple7$.class */
public final class Tuple7$ implements Serializable {
    public static final Tuple7$ MODULE$ = null;

    static {
        new Tuple7$();
    }

    private Tuple7$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7> Tuple7<T1, T2, T3, T4, T5, T6, T7> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7) {
        return new Tuple7<>(t1, t2, t3, t4, t5, t6, t7);
    }

    public final String toString() {
        return "Tuple7";
    }

    public <T1, T2, T3, T4, T5, T6, T7> Option<Tuple7<T1, T2, T3, T4, T5, T6, T7>> unapply(Tuple7<T1, T2, T3, T4, T5, T6, T7> tuple7) {
        return tuple7 == null ? None$.MODULE$ : new Some(new Tuple7(tuple7.mo222_1(), tuple7.mo221_2(), tuple7.mo220_3(), tuple7.mo219_4(), tuple7.mo218_5(), tuple7.mo217_6(), tuple7.mo216_7()));
    }
}
