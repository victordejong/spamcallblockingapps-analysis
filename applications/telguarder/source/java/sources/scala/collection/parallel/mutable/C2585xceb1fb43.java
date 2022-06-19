package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
/* renamed from: scala.collection.parallel.mutable.ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1 */
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1.class */
public final class C2585xceb1fb43 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParArray$ParArrayIterator$$anonfun$copy2builder$1 $outer;

    public C2585xceb1fb43(ParArray$ParArrayIterator$$anonfun$copy2builder$1 parArray$ParArrayIterator$$anonfun$copy2builder$1) {
        Objects.requireNonNull(parArray$ParArrayIterator$$anonfun$copy2builder$1);
        this.$outer = parArray$ParArrayIterator$$anonfun$copy2builder$1;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        apply$mcV$sp();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.$outer.m89xe088084b(this.$outer.cb$3, this.$outer.$outer.arr(), this.$outer.$outer.until(), this.$outer.m93x23990fab().m91i());
        this.$outer.m93x23990fab().i_$eq(this.$outer.m93x23990fab().until());
    }
}
