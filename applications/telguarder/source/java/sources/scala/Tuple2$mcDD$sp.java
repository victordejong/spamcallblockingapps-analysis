package scala;

import scala.Product2$mcDD$sp;
/* loaded from: classes3-dex2jar.jar:scala/Tuple2$mcDD$sp.class */
public class Tuple2$mcDD$sp extends Tuple2<Object, Object> implements Product2$mcDD$sp {
    public final double _1$mcD$sp;
    public final double _2$mcD$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple2$mcDD$sp(double d, double d2) {
        super(null, null);
        this._1$mcD$sp = d;
        this._2$mcD$sp = d2;
        Product2$mcDD$sp.Cclass.$init$(this);
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

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, double] */
    @Override // scala.Tuple2, scala.Product2
    /* renamed from: _2 */
    public Object mo268_2() {
        return _2$mcD$sp();
    }

    @Override // scala.Tuple2, scala.Product2
    public double _2$mcD$sp() {
        return this._2$mcD$sp;
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
        return swap$mcDD$sp();
    }

    @Override // scala.Tuple2
    public Tuple2<Object, Object> swap$mcDD$sp() {
        return new Tuple2$mcDD$sp(mo268_2(), mo269_1());
    }
}
