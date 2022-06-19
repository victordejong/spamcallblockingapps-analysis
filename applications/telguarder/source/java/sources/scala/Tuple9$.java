package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple9$.class */
public final class Tuple9$ implements Serializable {
    public static final Tuple9$ MODULE$ = null;

    static {
        new Tuple9$();
    }

    private Tuple9$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9> Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9) {
        return new Tuple9<>(t1, t2, t3, t4, t5, t6, t7, t8, t9);
    }

    public final String toString() {
        return "Tuple9";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9> Option<Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>> unapply(Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> tuple9) {
        return tuple9 == null ? None$.MODULE$ : new Some(new Tuple9(tuple9.mo207_1(), tuple9.mo206_2(), tuple9.mo205_3(), tuple9.mo204_4(), tuple9.mo203_5(), tuple9.mo202_6(), tuple9.mo201_7(), tuple9.mo200_8(), tuple9.mo199_9()));
    }
}
