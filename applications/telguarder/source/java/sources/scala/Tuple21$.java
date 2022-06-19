package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple21$.class */
public final class Tuple21$ implements Serializable {
    public static final Tuple21$ MODULE$ = null;

    static {
        new Tuple21$();
    }

    private Tuple21$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21> Tuple21<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12, T13 t13, T14 t14, T15 t15, T16 t16, T17 t17, T18 t18, T19 t19, T20 t20, T21 t21) {
        return new Tuple21<>(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20, t21);
    }

    public final String toString() {
        return "Tuple21";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21> Option<Tuple21<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21>> unapply(Tuple21<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21> tuple21) {
        return tuple21 == null ? None$.MODULE$ : new Some(new Tuple21(tuple21.mo258_1(), tuple21.mo257_2(), tuple21.mo256_3(), tuple21.mo255_4(), tuple21.mo254_5(), tuple21.mo253_6(), tuple21.mo252_7(), tuple21.mo251_8(), tuple21.mo250_9(), tuple21._10(), tuple21._11(), tuple21._12(), tuple21._13(), tuple21._14(), tuple21._15(), tuple21._16(), tuple21._17(), tuple21._18(), tuple21._19(), tuple21._20(), tuple21._21()));
    }
}
