package scala;

import scala.Product2$mcDJ$sp;
/* loaded from: classes3-dex2jar.jar:scala/Tuple2$mcDJ$sp.class */
public class Tuple2$mcDJ$sp extends Tuple2<Object, Object> implements Product2$mcDJ$sp {
    public final double _1$mcD$sp;
    public final long _2$mcJ$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple2$mcDJ$sp(double d, long j) {
        super(null, null);
        this._1$mcD$sp = d;
        this._2$mcJ$sp = j;
        Product2$mcDJ$sp.Cclass.$init$(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, double] */
    @Override // scala.Tuple2, scala.Product2
    /* renamed from: _1 */
    public Object mo269_1() {
        return _1$mcD$sp();
    }

    @Override // scala.Tuple2, scala.Product2
    public double _1$mcD$sp() {
        return this._1$mcD$sp;
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

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, double] */
    @Override // scala.Tuple2
    public <T1, T2> Object copy$default$1() {
        return copy$default$1$mcD$sp();
    }

    @Override // scala.Tuple2
    public <T1, T2> double copy$default$1$mcD$sp() {
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
        return swap$mcDJ$sp();
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap$mcDJ$sp() {
        return new Tuple2$mcJD$sp(mo268_2(), mo269_1());
    }
}
