package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple15$.class */
public final class Tuple15$ implements Serializable {
    public static final Tuple15$ MODULE$ = null;

    static {
        new Tuple15$();
    }

    private Tuple15$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15> Tuple15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12, T13 t13, T14 t14, T15 t15) {
        return new Tuple15<>(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15);
    }

    public final String toString() {
        return "Tuple15";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15> Option<Tuple15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15>> unapply(Tuple15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15> tuple15) {
        return tuple15 == null ? None$.MODULE$ : new Some(new Tuple15(tuple15.mo314_1(), tuple15.mo313_2(), tuple15.mo312_3(), tuple15.mo311_4(), tuple15.mo310_5(), tuple15.mo309_6(), tuple15.mo308_7(), tuple15.mo307_8(), tuple15.mo306_9(), tuple15._10(), tuple15._11(), tuple15._12(), tuple15._13(), tuple15._14(), tuple15._15()));
    }
}
