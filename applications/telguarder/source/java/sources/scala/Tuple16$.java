package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple16$.class */
public final class Tuple16$ implements Serializable {
    public static final Tuple16$ MODULE$ = null;

    static {
        new Tuple16$();
    }

    private Tuple16$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16> Tuple16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12, T13 t13, T14 t14, T15 t15, T16 t16) {
        return new Tuple16<>(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16);
    }

    public final String toString() {
        return "Tuple16";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16> Option<Tuple16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16>> unapply(Tuple16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16> tuple16) {
        return tuple16 == null ? None$.MODULE$ : new Some(new Tuple16(tuple16.mo305_1(), tuple16.mo304_2(), tuple16.mo303_3(), tuple16.mo302_4(), tuple16.mo301_5(), tuple16.mo300_6(), tuple16.mo299_7(), tuple16.mo298_8(), tuple16.mo297_9(), tuple16._10(), tuple16._11(), tuple16._12(), tuple16._13(), tuple16._14(), tuple16._15(), tuple16._16()));
    }
}
