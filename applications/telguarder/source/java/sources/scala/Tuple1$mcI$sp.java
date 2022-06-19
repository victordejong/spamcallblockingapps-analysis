package scala;

import scala.Product1$mcI$sp;
/* loaded from: classes3-dex2jar.jar:scala/Tuple1$mcI$sp.class */
public class Tuple1$mcI$sp extends Tuple1<Object> implements Product1$mcI$sp {
    public final int _1$mcI$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple1$mcI$sp(int i) {
        super(null);
        this._1$mcI$sp = i;
        Product1$mcI$sp.Cclass.$init$(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, int] */
    @Override // scala.Tuple1, scala.Product1
    /* renamed from: _1 */
    public Object mo360_1() {
        return _1$mcI$sp();
    }

    @Override // scala.Tuple1, scala.Product1
    public int _1$mcI$sp() {
        return this._1$mcI$sp;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, int] */
    @Override // scala.Tuple1
    public <T1> Object copy$default$1() {
        return copy$default$1$mcI$sp();
    }

    @Override // scala.Tuple1
    public <T1> int copy$default$1$mcI$sp() {
        return mo360_1();
    }

    @Override // scala.Tuple1
    public boolean specInstance$() {
        return true;
    }
}
