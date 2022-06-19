package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple12$.class */
public final class Tuple12$ implements Serializable {
    public static final Tuple12$ MODULE$ = null;

    static {
        new Tuple12$();
    }

    private Tuple12$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> Tuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12) {
        return new Tuple12<>(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12);
    }

    public final String toString() {
        return "Tuple12";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> Option<Tuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>> unapply(Tuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> tuple12) {
        return tuple12 == null ? None$.MODULE$ : new Some(new Tuple12(tuple12.mo341_1(), tuple12.mo340_2(), tuple12.mo339_3(), tuple12.mo338_4(), tuple12.mo337_5(), tuple12.mo336_6(), tuple12.mo335_7(), tuple12.mo334_8(), tuple12.mo333_9(), tuple12._10(), tuple12._11(), tuple12._12()));
    }
}
