package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple2$mcCD$sp.class */
public class Tuple2$mcCD$sp extends Tuple2<Object, Object> {
    public final char _1$mcC$sp;
    public final double _2$mcD$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple2$mcCD$sp(char c, double d) {
        super(null, null);
        this._1$mcC$sp = c;
        this._2$mcD$sp = d;
    }

    @Override // scala.Tuple2, scala.Product2
    /* renamed from: _1 */
    public char mo269_1() {
        return _1$mcC$sp();
    }

    @Override // scala.Tuple2
    public char _1$mcC$sp() {
        return this._1$mcC$sp;
    }

    @Override // scala.Tuple2, scala.Product2
    /* renamed from: _2 */
    public double mo268_2() {
        return _2$mcD$sp();
    }

    @Override // scala.Tuple2, scala.Product2
    public double _2$mcD$sp() {
        return this._2$mcD$sp;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, char] */
    @Override // scala.Tuple2
    public <T1, T2> Object copy$default$1() {
        return copy$default$1$mcC$sp();
    }

    @Override // scala.Tuple2
    public <T1, T2> char copy$default$1$mcC$sp() {
        return mo269_1();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, double] */
    @Override // scala.Tuple2
    public <T1, T2> Object copy$default$2() {
        return copy$default$2$mcD$sp();
    }

    @Override // scala.Tuple2
    public <T1, T2> double copy$default$2$mcD$sp() {
        return mo268_2();
    }

    @Override // scala.Tuple2
    public boolean specInstance$() {
        return true;
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap() {
        return swap$mcCD$sp();
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap$mcCD$sp() {
        return new Tuple2$mcDC$sp(mo268_2(), mo269_1());
    }
}
