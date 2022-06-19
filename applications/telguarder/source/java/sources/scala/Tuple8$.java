package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple8$.class */
public final class Tuple8$ implements Serializable {
    public static final Tuple8$ MODULE$ = null;

    static {
        new Tuple8$();
    }

    private Tuple8$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8> Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8) {
        return new Tuple8<>(t1, t2, t3, t4, t5, t6, t7, t8);
    }

    public final String toString() {
        return "Tuple8";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8> Option<Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>> unapply(Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> tuple8) {
        return tuple8 == null ? None$.MODULE$ : new Some(new Tuple8(tuple8.mo215_1(), tuple8.mo214_2(), tuple8.mo213_3(), tuple8.mo212_4(), tuple8.mo211_5(), tuple8.mo210_6(), tuple8.mo209_7(), tuple8.mo208_8()));
    }
}
