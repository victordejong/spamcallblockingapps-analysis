package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple18$.class */
public final class Tuple18$ implements Serializable {
    public static final Tuple18$ MODULE$ = null;

    static {
        new Tuple18$();
    }

    private Tuple18$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18> Tuple18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9, T10 t10, T11 t11, T12 t12, T13 t13, T14 t14, T15 t15, T16 t16, T17 t17, T18 t18) {
        return new Tuple18<>(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18);
    }

    public final String toString() {
        return "Tuple18";
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18> Option<Tuple18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18>> unapply(Tuple18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18> tuple18) {
        return tuple18 == null ? None$.MODULE$ : new Some(new Tuple18(tuple18.mo287_1(), tuple18.mo286_2(), tuple18.mo285_3(), tuple18.mo284_4(), tuple18.mo283_5(), tuple18.mo282_6(), tuple18.mo281_7(), tuple18.mo280_8(), tuple18.mo279_9(), tuple18._10(), tuple18._11(), tuple18._12(), tuple18._13(), tuple18._14(), tuple18._15(), tuple18._16(), tuple18._17(), tuple18._18()));
    }
}
