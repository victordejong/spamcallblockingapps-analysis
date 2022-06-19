package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple2$mcCI$sp.class */
public class Tuple2$mcCI$sp extends Tuple2<Object, Object> {
    public final char _1$mcC$sp;
    public final int _2$mcI$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple2$mcCI$sp(char c, int i) {
        super(null, null);
        this._1$mcC$sp = c;
        this._2$mcI$sp = i;
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
    public int mo268_2() {
        return _2$mcI$sp();
    }

    @Override // scala.Tuple2, scala.Product2
    public int _2$mcI$sp() {
        return this._2$mcI$sp;
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

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, int] */
    @Override // scala.Tuple2
    public <T1, T2> Object copy$default$2() {
        return copy$default$2$mcI$sp();
    }

    @Override // scala.Tuple2
    public <T1, T2> int copy$default$2$mcI$sp() {
        return mo268_2();
    }

    @Override // scala.Tuple2
    public boolean specInstance$() {
        return true;
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap() {
        return swap$mcCI$sp();
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap$mcCI$sp() {
        return new Tuple2$mcIC$sp(mo268_2(), mo269_1());
    }
}
