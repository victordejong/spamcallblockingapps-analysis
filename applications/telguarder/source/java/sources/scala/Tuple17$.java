package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple17$.class */
public final class Tuple17$ implements Serializable {
    public static final Tuple17$ MODULE$ = null;

    static {
        new Tuple17$();
    }

    private Tuple17$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17> Tuple17<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12, T13 t13, T14 t14, T15 t15, T16 t16, T17 t17) {
        return new Tuple17<>(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17);
    }

    public final String toString() {
        return "Tuple17";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17> Option<Tuple17<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17>> unapply(Tuple17<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17> tuple17) {
        return tuple17 == null ? None$.MODULE$ : new Some(new Tuple17(tuple17.mo296_1(), tuple17.mo295_2(), tuple17.mo294_3(), tuple17.mo293_4(), tuple17.mo292_5(), tuple17.mo291_6(), tuple17.mo290_7(), tuple17.mo289_8(), tuple17.mo288_9(), tuple17._10(), tuple17._11(), tuple17._12(), tuple17._13(), tuple17._14(), tuple17._15(), tuple17._16(), tuple17._17()));
    }
}
