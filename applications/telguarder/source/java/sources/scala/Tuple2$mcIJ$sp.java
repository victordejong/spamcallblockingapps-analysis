package scala;

import scala.Product2$mcIJ$sp;
/* loaded from: classes3-dex2jar.jar:scala/Tuple2$mcIJ$sp.class */
public class Tuple2$mcIJ$sp extends Tuple2<Object, Object> implements Product2$mcIJ$sp {
    public final int _1$mcI$sp;
    public final long _2$mcJ$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple2$mcIJ$sp(int i, long j) {
        super(null, null);
        this._1$mcI$sp = i;
        this._2$mcJ$sp = j;
        Product2$mcIJ$sp.Cclass.$init$(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, int] */
    @Override // scala.Tuple2, scala.Product2
    /* renamed from: _1 */
    public Object mo269_1() {
        return _1$mcI$sp();
    }

    @Override // scala.Tuple2, scala.Product2
    public int _1$mcI$sp() {
        return this._1$mcI$sp;
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

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, int] */
    @Override // scala.Tuple2
    public <T1, T2> Object copy$default$1() {
        return copy$default$1$mcI$sp();
    }

    @Override // scala.Tuple2
    public <T1, T2> int copy$default$1$mcI$sp() {
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
        return swap$mcIJ$sp();
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap$mcIJ$sp() {
        return new Tuple2$mcJI$sp(mo268_2(), mo269_1());
    }
}
