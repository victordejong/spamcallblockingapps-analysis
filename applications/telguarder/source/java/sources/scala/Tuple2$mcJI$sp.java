package scala;

import scala.Product2$mcJI$sp;
/* loaded from: classes3-dex2jar.jar:scala/Tuple2$mcJI$sp.class */
public class Tuple2$mcJI$sp extends Tuple2<Object, Object> implements Product2$mcJI$sp {
    public final long _1$mcJ$sp;
    public final int _2$mcI$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple2$mcJI$sp(long j, int i) {
        super(null, null);
        this._1$mcJ$sp = j;
        this._2$mcI$sp = i;
        Product2$mcJI$sp.Cclass.$init$(this);
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

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, int] */
    @Override // scala.Tuple2, scala.Product2
    /* renamed from: _2 */
    public Object mo268_2() {
        return _2$mcI$sp();
    }

    @Override // scala.Tuple2, scala.Product2
    public int _2$mcI$sp() {
        return this._2$mcI$sp;
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
        return swap$mcJI$sp();
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap$mcJI$sp() {
        return new Tuple2$mcIJ$sp(mo268_2(), mo269_1());
    }
}
