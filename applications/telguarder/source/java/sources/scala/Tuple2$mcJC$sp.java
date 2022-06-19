package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple2$mcJC$sp.class */
public class Tuple2$mcJC$sp extends Tuple2<Object, Object> {
    public final long _1$mcJ$sp;
    public final char _2$mcC$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple2$mcJC$sp(long j, char c) {
        super(null, null);
        this._1$mcJ$sp = j;
        this._2$mcC$sp = c;
    }

    @Override // scala.Tuple2, scala.Product2
    /* renamed from: _1 */
    public long mo269_1() {
        return _1$mcJ$sp();
    }

    @Override // scala.Tuple2, scala.Product2
    public long _1$mcJ$sp() {
        return this._1$mcJ$sp;
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

    /* JADX WARN: Type inference failed for: r0v1, types: [long, java.lang.Object] */
    @Override // scala.Tuple2
    public <T1, T2> Object copy$default$1() {
        return copy$default$1$mcJ$sp();
    }

    @Override // scala.Tuple2
    public <T1, T2> long copy$default$1$mcJ$sp() {
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
        return swap$mcJC$sp();
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap$mcJC$sp() {
        return new Tuple2$mcCJ$sp(mo268_2(), mo269_1());
    }
}
