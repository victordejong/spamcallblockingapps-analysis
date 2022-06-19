package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple22$.class */
public final class Tuple22$ implements Serializable {
    public static final Tuple22$ MODULE$ = null;

    static {
        new Tuple22$();
    }

    private Tuple22$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22> Tuple22<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12, T13 t13, T14 t14, T15 t15, T16 t16, T17 t17, T18 t18, T19 t19, T20 t20, T21 t21, T22 t22) {
        return new Tuple22<>(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20, t21, t22);
    }

    public final String toString() {
        return "Tuple22";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22> Option<Tuple22<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22>> unapply(Tuple22<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22> tuple22) {
        return tuple22 == null ? None$.MODULE$ : new Some(new Tuple22(tuple22.mo249_1(), tuple22.mo248_2(), tuple22.mo247_3(), tuple22.mo246_4(), tuple22.mo245_5(), tuple22.mo244_6(), tuple22.mo243_7(), tuple22.mo242_8(), tuple22.mo241_9(), tuple22._10(), tuple22._11(), tuple22._12(), tuple22._13(), tuple22._14(), tuple22._15(), tuple22._16(), tuple22._17(), tuple22._18(), tuple22._19(), tuple22._20(), tuple22._21(), tuple22._22()));
    }
}
