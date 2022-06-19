package scala;

import scala.Product2$mcJJ$sp;
/* loaded from: classes3-dex2jar.jar:scala/Tuple2$mcJJ$sp.class */
public class Tuple2$mcJJ$sp extends Tuple2<Object, Object> implements Product2$mcJJ$sp {
    public final long _1$mcJ$sp;
    public final long _2$mcJ$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple2$mcJJ$sp(long j, long j2) {
        super(null, null);
        this._1$mcJ$sp = j;
        this._2$mcJ$sp = j2;
        Product2$mcJJ$sp.Cclass.$init$(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long, java.lang.Object] */
    @Override // scala.Tuple2, scala.Product2
    /* renamed from: _1 */
    public Object mo269_1() {
        return _1$mcJ$sp();
    }

    @Override // scala.Tuple2, scala.Product2
    public long _1$mcJ$sp() {
        return this._1$mcJ$sp;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long, java.lang.Object] */
    @Override // scala.Tuple2, scala.Product2
    /* renamed from: _2 */
    public Object mo268_2() {
        return _2$mcJ$sp();
    }

    @Override // scala.Tuple2, scala.Product2
    public long _2$mcJ$sp() {
        return this._2$mcJ$sp;
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
        return swap$mcJJ$sp();
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap$mcJJ$sp() {
        return new Tuple2$mcJJ$sp(mo268_2(), mo269_1());
    }
}
