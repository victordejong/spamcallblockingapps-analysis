package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.collection.parallel.mutable.ParArray;
import scala.reflect.ClassTag$;
import scala.runtime.AbstractFunction0$mcV$sp;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1.class */
public final class ParArray$ParArrayIterator$$anonfun$copy2builder$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ ParArray.ParArrayIterator $outer;
    public final Builder cb$3;

    /* JADX WARN: Multi-variable type inference failed */
    public ParArray$ParArrayIterator$$anonfun$copy2builder$1(ParArray.ParArrayIterator parArrayIterator, ParArray<T>.ParArrayIterator parArrayIterator2) {
        Objects.requireNonNull(parArrayIterator);
        this.$outer = parArrayIterator;
        this.cb$3 = parArrayIterator2;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        apply$mcV$sp();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.m90xefb94d96().builder2ops(this.cb$3).ifIs(new C2586xceb1fb45(this)).otherwise(new C2585xceb1fb43(this), ClassTag$.MODULE$.apply(UnrolledParArrayCombiner.class));
    }

    /* renamed from: scala$collection$parallel$mutable$ParArray$ParArrayIterator$$anonfun$$$outer */
    public /* synthetic */ ParArray.ParArrayIterator m93x23990fab() {
        return this.$outer;
    }
}
