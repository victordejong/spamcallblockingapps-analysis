package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple11$.class */
public final class Tuple11$ implements Serializable {
    public static final Tuple11$ MODULE$ = null;

    static {
        new Tuple11$();
    }

    private Tuple11$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11) {
        return new Tuple11<>(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11);
    }

    public final String toString() {
        return "Tuple11";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> Option<Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>> unapply(Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> tuple11) {
        return tuple11 == null ? None$.MODULE$ : new Some(new Tuple11(tuple11.mo350_1(), tuple11.mo349_2(), tuple11.mo348_3(), tuple11.mo347_4(), tuple11.mo346_5(), tuple11.mo345_6(), tuple11.mo344_7(), tuple11.mo343_8(), tuple11.mo342_9(), tuple11._10(), tuple11._11()));
    }
}
