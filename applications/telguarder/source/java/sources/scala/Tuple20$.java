package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple20$.class */
public final class Tuple20$ implements Serializable {
    public static final Tuple20$ MODULE$ = null;

    static {
        new Tuple20$();
    }

    private Tuple20$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20> Tuple20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12, T13 t13, T14 t14, T15 t15, T16 t16, T17 t17, T18 t18, T19 t19, T20 t20) {
        return new Tuple20<>(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20);
    }

    public final String toString() {
        return "Tuple20";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20> Option<Tuple20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20>> unapply(Tuple20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20> tuple20) {
        return tuple20 == null ? None$.MODULE$ : new Some(new Tuple20(tuple20.mo267_1(), tuple20.mo266_2(), tuple20.mo265_3(), tuple20.mo264_4(), tuple20.mo263_5(), tuple20.mo262_6(), tuple20.mo261_7(), tuple20.mo260_8(), tuple20.mo259_9(), tuple20._10(), tuple20._11(), tuple20._12(), tuple20._13(), tuple20._14(), tuple20._15(), tuple20._16(), tuple20._17(), tuple20._18(), tuple20._19(), tuple20._20()));
    }
}
