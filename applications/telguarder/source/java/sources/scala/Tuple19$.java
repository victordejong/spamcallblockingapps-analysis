package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple19$.class */
public final class Tuple19$ implements Serializable {
    public static final Tuple19$ MODULE$ = null;

    static {
        new Tuple19$();
    }

    private Tuple19$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19> Tuple19<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12, T13 t13, T14 t14, T15 t15, T16 t16, T17 t17, T18 t18, T19 t19) {
        return new Tuple19<>(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19);
    }

    public final String toString() {
        return "Tuple19";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19> Option<Tuple19<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19>> unapply(Tuple19<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19> tuple19) {
        return tuple19 == null ? None$.MODULE$ : new Some(new Tuple19(tuple19.mo278_1(), tuple19.mo277_2(), tuple19.mo276_3(), tuple19.mo275_4(), tuple19.mo274_5(), tuple19.mo273_6(), tuple19.mo272_7(), tuple19.mo271_8(), tuple19.mo270_9(), tuple19._10(), tuple19._11(), tuple19._12(), tuple19._13(), tuple19._14(), tuple19._15(), tuple19._16(), tuple19._17(), tuple19._18(), tuple19._19()));
    }
}
