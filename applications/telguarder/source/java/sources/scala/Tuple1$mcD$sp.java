package scala;

import scala.Product1$mcD$sp;
/* loaded from: classes3-dex2jar.jar:scala/Tuple1$mcD$sp.class */
public class Tuple1$mcD$sp extends Tuple1<Object> implements Product1$mcD$sp {
    public final double _1$mcD$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple1$mcD$sp(double d) {
        super(null);
        this._1$mcD$sp = d;
        Product1$mcD$sp.Cclass.$init$(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, double] */
    @Override // scala.Tuple1, scala.Product1
    /* renamed from: _1 */
    public Object mo360_1() {
        return _1$mcD$sp();
    }

    @Override // scala.Tuple1, scala.Product1
    public double _1$mcD$sp() {
        return this._1$mcD$sp;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, double] */
    @Override // scala.Tuple1
    public <T1> Object copy$default$1() {
        return copy$default$1$mcD$sp();
    }

    @Override // scala.Tuple1
    public <T1> double copy$default$1$mcD$sp() {
        return mo360_1();
    }

    @Override // scala.Tuple1
    public boolean specInstance$() {
        return true;
    }
}
