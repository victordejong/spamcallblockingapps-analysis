package scala;

import scala.Product1$mcJ$sp;
/* loaded from: classes3-dex2jar.jar:scala/Tuple1$mcJ$sp.class */
public class Tuple1$mcJ$sp extends Tuple1<Object> implements Product1$mcJ$sp {
    public final long _1$mcJ$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tuple1$mcJ$sp(long j) {
        super(null);
        this._1$mcJ$sp = j;
        Product1$mcJ$sp.Cclass.$init$(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long, java.lang.Object] */
    @Override // scala.Tuple1, scala.Product1
    /* renamed from: _1 */
    public Object mo360_1() {
        return _1$mcJ$sp();
    }

    @Override // scala.Tuple1, scala.Product1
    public long _1$mcJ$sp() {
        return this._1$mcJ$sp;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long, java.lang.Object] */
    @Override // scala.Tuple1
    public <T1> Object copy$default$1() {
        return copy$default$1$mcJ$sp();
    }

    @Override // scala.Tuple1
    public <T1> long copy$default$1$mcJ$sp() {
        return mo360_1();
    }

    @Override // scala.Tuple1
    public boolean specInstance$() {
        return true;
    }
}
