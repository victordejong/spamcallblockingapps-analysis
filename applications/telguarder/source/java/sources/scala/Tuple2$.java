package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple2$.class */
public final class Tuple2$ implements Serializable {
    public static final Tuple2$ MODULE$ = null;

    static {
        new Tuple2$();
    }

    private Tuple2$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T1, T2> Tuple2<T1, T2> apply(T1 t1, T2 t2) {
        return new Tuple2<>(t1, t2);
    }

    public Tuple2<Object, Object> apply$mCCc$sp(char c, char c2) {
        return new Tuple2$mcCC$sp(c, c2);
    }

    public Tuple2<Object, Object> apply$mCDc$sp(char c, double d) {
        return new Tuple2$mcCD$sp(c, d);
    }

    public Tuple2<Object, Object> apply$mCIc$sp(char c, int i) {
        return new Tuple2$mcCI$sp(c, i);
    }

    public Tuple2<Object, Object> apply$mCJc$sp(char c, long j) {
        return new Tuple2$mcCJ$sp(c, j);
    }

    public Tuple2<Object, Object> apply$mCZc$sp(char c, boolean z) {
        return new Tuple2$mcCZ$sp(c, z);
    }

    public Tuple2<Object, Object> apply$mDCc$sp(double d, char c) {
        return new Tuple2$mcDC$sp(d, c);
    }

    public Tuple2<Object, Object> apply$mDDc$sp(double d, double d2) {
        return new Tuple2$mcDD$sp(d, d2);
    }

    public Tuple2<Object, Object> apply$mDIc$sp(double d, int i) {
        return new Tuple2$mcDI$sp(d, i);
    }

    public Tuple2<Object, Object> apply$mDJc$sp(double d, long j) {
        return new Tuple2$mcDJ$sp(d, j);
    }

    public Tuple2<Object, Object> apply$mDZc$sp(double d, boolean z) {
        return new Tuple2$mcDZ$sp(d, z);
    }

    public Tuple2<Object, Object> apply$mICc$sp(int i, char c) {
        return new Tuple2$mcIC$sp(i, c);
    }

    public Tuple2<Object, Object> apply$mIDc$sp(int i, double d) {
        return new Tuple2$mcID$sp(i, d);
    }

    public Tuple2<Object, Object> apply$mIIc$sp(int i, int i2) {
        return new Tuple2$mcII$sp(i, i2);
    }

    public Tuple2<Object, Object> apply$mIJc$sp(int i, long j) {
        return new Tuple2$mcIJ$sp(i, j);
    }

    public Tuple2<Object, Object> apply$mIZc$sp(int i, boolean z) {
        return new Tuple2$mcIZ$sp(i, z);
    }

    public Tuple2<Object, Object> apply$mJCc$sp(long j, char c) {
        return new Tuple2$mcJC$sp(j, c);
    }

    public Tuple2<Object, Object> apply$mJDc$sp(long j, double d) {
        return new Tuple2$mcJD$sp(j, d);
    }

    public Tuple2<Object, Object> apply$mJIc$sp(long j, int i) {
        return new Tuple2$mcJI$sp(j, i);
    }

    public Tuple2<Object, Object> apply$mJJc$sp(long j, long j2) {
        return new Tuple2$mcJJ$sp(j, j2);
    }

    public Tuple2<Object, Object> apply$mJZc$sp(long j, boolean z) {
        return new Tuple2$mcJZ$sp(j, z);
    }

    public Tuple2<Object, Object> apply$mZCc$sp(boolean z, char c) {
        return new Tuple2$mcZC$sp(z, c);
    }

    public Tuple2<Object, Object> apply$mZDc$sp(boolean z, double d) {
        return new Tuple2$mcZD$sp(z, d);
    }

    public Tuple2<Object, Object> apply$mZIc$sp(boolean z, int i) {
        return new Tuple2$mcZI$sp(z, i);
    }

    public Tuple2<Object, Object> apply$mZJc$sp(boolean z, long j) {
        return new Tuple2$mcZJ$sp(z, j);
    }

    public Tuple2<Object, Object> apply$mZZc$sp(boolean z, boolean z2) {
        return new Tuple2$mcZZ$sp(z, z2);
    }

    public final String toString() {
        return "Tuple2";
    }

    public <T1, T2> Option<Tuple2<T1, T2>> unapply(Tuple2<T1, T2> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2(tuple2.mo269_1(), tuple2.mo268_2()));
    }

    public Option<Tuple2<Object, Object>> unapply$mCCc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcCC$sp(tuple2._1$mcC$sp(), tuple2._2$mcC$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mCDc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcCD$sp(tuple2._1$mcC$sp(), tuple2._2$mcD$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mCIc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcCI$sp(tuple2._1$mcC$sp(), tuple2._2$mcI$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mCJc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcCJ$sp(tuple2._1$mcC$sp(), tuple2._2$mcJ$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mCZc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcCZ$sp(tuple2._1$mcC$sp(), tuple2._2$mcZ$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mDCc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcDC$sp(tuple2._1$mcD$sp(), tuple2._2$mcC$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mDDc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcDD$sp(tuple2._1$mcD$sp(), tuple2._2$mcD$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mDIc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcDI$sp(tuple2._1$mcD$sp(), tuple2._2$mcI$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mDJc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcDJ$sp(tuple2._1$mcD$sp(), tuple2._2$mcJ$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mDZc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcDZ$sp(tuple2._1$mcD$sp(), tuple2._2$mcZ$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mICc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcIC$sp(tuple2._1$mcI$sp(), tuple2._2$mcC$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mIDc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcID$sp(tuple2._1$mcI$sp(), tuple2._2$mcD$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mIIc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcII$sp(tuple2._1$mcI$sp(), tuple2._2$mcI$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mIJc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcIJ$sp(tuple2._1$mcI$sp(), tuple2._2$mcJ$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mIZc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcIZ$sp(tuple2._1$mcI$sp(), tuple2._2$mcZ$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mJCc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcJC$sp(tuple2._1$mcJ$sp(), tuple2._2$mcC$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mJDc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcJD$sp(tuple2._1$mcJ$sp(), tuple2._2$mcD$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mJIc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcJI$sp(tuple2._1$mcJ$sp(), tuple2._2$mcI$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mJJc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcJJ$sp(tuple2._1$mcJ$sp(), tuple2._2$mcJ$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mJZc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcJZ$sp(tuple2._1$mcJ$sp(), tuple2._2$mcZ$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mZCc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcZC$sp(tuple2._1$mcZ$sp(), tuple2._2$mcC$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mZDc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcZD$sp(tuple2._1$mcZ$sp(), tuple2._2$mcD$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mZIc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcZI$sp(tuple2._1$mcZ$sp(), tuple2._2$mcI$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mZJc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcZJ$sp(tuple2._1$mcZ$sp(), tuple2._2$mcJ$sp()));
    }

    public Option<Tuple2<Object, Object>> unapply$mZZc$sp(Tuple2<Object, Object> tuple2) {
        return tuple2 == null ? None$.MODULE$ : new Some(new Tuple2$mcZZ$sp(tuple2._1$mcZ$sp(), tuple2._2$mcZ$sp()));
    }
}
