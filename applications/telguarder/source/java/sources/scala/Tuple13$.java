package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple13$.class */
public final class Tuple13$ implements Serializable {
    public static final Tuple13$ MODULE$ = null;

    static {
        new Tuple13$();
    }

    private Tuple13$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13> Tuple13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12, T13 t13) {
        return new Tuple13<>(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13);
    }

    public final String toString() {
        return "Tuple13";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13> Option<Tuple13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13>> unapply(Tuple13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13> tuple13) {
        return tuple13 == null ? None$.MODULE$ : new Some(new Tuple13(tuple13.mo332_1(), tuple13.mo331_2(), tuple13.mo330_3(), tuple13.mo329_4(), tuple13.mo328_5(), tuple13.mo327_6(), tuple13.mo326_7(), tuple13.mo325_8(), tuple13.mo324_9(), tuple13._10(), tuple13._11(), tuple13._12(), tuple13._13()));
    }
}
