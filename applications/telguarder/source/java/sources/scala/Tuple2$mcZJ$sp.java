package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple2$mcZJ$sp.class */
public class Tuple2$mcZJ$sp extends Tuple2<Object, Object> {
    public final boolean _1$mcZ$sp;
    public final long _2$mcJ$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple2$mcZJ$sp(boolean z, long j) {
        super(null, null);
        this._1$mcZ$sp = z;
        this._2$mcJ$sp = j;
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
    public long mo268_2() {
        return _2$mcJ$sp();
    }

    @Override // scala.Tuple2, scala.Product2
    public long _2$mcJ$sp() {
        return this._2$mcJ$sp;
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

    /* JADX WARN: Type inference failed for: r0v1, types: [long, java.lang.Object] */
    @Override // scala.Tuple2
    public <T1, T2> Object copy$default$2() {
        return copy$default$2$mcJ$sp();
    }

    @Override // scala.Tuple2
    public <T1, T2> long copy$default$2$mcJ$sp() {
        return mo268_2();
    }

    @Override // scala.Tuple2
    public boolean specInstance$() {
        return true;
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap() {
        return swap$mcZJ$sp();
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap$mcZJ$sp() {
        return new Tuple2$mcJZ$sp(mo268_2(), mo269_1());
    }
}
