package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple14$.class */
public final class Tuple14$ implements Serializable {
    public static final Tuple14$ MODULE$ = null;

    static {
        new Tuple14$();
    }

    private Tuple14$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14> Tuple14<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12, T13 t13, T14 t14) {
        return new Tuple14<>(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14);
    }

    public final String toString() {
        return "Tuple14";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14> Option<Tuple14<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14>> unapply(Tuple14<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14> tuple14) {
        return tuple14 == null ? None$.MODULE$ : new Some(new Tuple14(tuple14.mo323_1(), tuple14.mo322_2(), tuple14.mo321_3(), tuple14.mo320_4(), tuple14.mo319_5(), tuple14.mo318_6(), tuple14.mo317_7(), tuple14.mo316_8(), tuple14.mo315_9(), tuple14._10(), tuple14._11(), tuple14._12(), tuple14._13(), tuple14._14()));
    }
}
