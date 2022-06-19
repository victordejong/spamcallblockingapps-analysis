package scala;
/* loaded from: classes3-dex2jar.jar:scala/Tuple2$mcZZ$sp.class */
public class Tuple2$mcZZ$sp extends Tuple2<Object, Object> {
    public final boolean _1$mcZ$sp;
    public final boolean _2$mcZ$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple2$mcZZ$sp(boolean z, boolean z2) {
        super(null, null);
        this._1$mcZ$sp = z;
        this._2$mcZ$sp = z2;
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
    public boolean mo268_2() {
        return _2$mcZ$sp();
    }

    @Override // scala.Tuple2
    public boolean _2$mcZ$sp() {
        return this._2$mcZ$sp;
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

    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, java.lang.Object] */
    @Override // scala.Tuple2
    public <T1, T2> Object copy$default$2() {
        return copy$default$2$mcZ$sp();
    }

    @Override // scala.Tuple2
    public <T1, T2> boolean copy$default$2$mcZ$sp() {
        return mo268_2();
    }

    @Override // scala.Tuple2
    public boolean specInstance$() {
        return true;
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap() {
        return swap$mcZZ$sp();
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap$mcZZ$sp() {
        return new Tuple2$mcZZ$sp(mo268_2(), mo269_1());
    }
}
