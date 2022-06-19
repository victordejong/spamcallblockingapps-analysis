package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple2$mcZC$sp.class */
public class Tuple2$mcZC$sp extends Tuple2<Object, Object> {
    public final boolean _1$mcZ$sp;
    public final char _2$mcC$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple2$mcZC$sp(boolean z, char c) {
        super(null, null);
        this._1$mcZ$sp = z;
        this._2$mcC$sp = c;
    }

    @Override // scala.Tuple2, scala.Product2
    /* renamed from: _1 */
    public boolean mo269_1() {
        return _1$mcZ$sp();
    }

    @Override // scala.Tuple2
    public boolean _1$mcZ$sp() {
        return this._1$mcZ$sp;
    }

    @Override // scala.Tuple2, scala.Product2
    /* renamed from: _2 */
    public char mo268_2() {
        return _2$mcC$sp();
    }

    @Override // scala.Tuple2
    public char _2$mcC$sp() {
        return this._2$mcC$sp;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, java.lang.Object] */
    @Override // scala.Tuple2
    public <T1, T2> Object copy$default$1() {
        return copy$default$1$mcZ$sp();
    }

    @Override // scala.Tuple2
    public <T1, T2> boolean copy$default$1$mcZ$sp() {
        return mo269_1();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, char] */
    @Override // scala.Tuple2
    public <T1, T2> Object copy$default$2() {
        return copy$default$2$mcC$sp();
    }

    @Override // scala.Tuple2
    public <T1, T2> char copy$default$2$mcC$sp() {
        return mo268_2();
    }

    @Override // scala.Tuple2
    public boolean specInstance$() {
        return true;
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap() {
        return swap$mcZC$sp();
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap$mcZC$sp() {
        return new Tuple2$mcCZ$sp(mo268_2(), mo269_1());
    }
}
