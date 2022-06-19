package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParArray;
import scala.reflect.ClassTag$;
import scala.runtime.AbstractFunction0$mcV$sp;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1.class */
public final class ParArray$ParArrayIterator$$anonfun$reverse2combiner$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ ParArray.ParArrayIterator $outer;
    public final Combiner cb$4;

    /* JADX WARN: Multi-variable type inference failed */
    public ParArray$ParArrayIterator$$anonfun$reverse2combiner$1(ParArray.ParArrayIterator parArrayIterator, ParArray<T>.ParArrayIterator parArrayIterator2) {
        Objects.requireNonNull(parArrayIterator);
        this.$outer = parArrayIterator;
        this.cb$4 = parArrayIterator2;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        apply$mcV$sp();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.m90xefb94d96().builder2ops(this.cb$4).ifIs(new C2588x65667c8b(this)).otherwise(new C2587x65667c89(this), ClassTag$.MODULE$.apply(UnrolledParArrayCombiner.class));
    }

    /* renamed from: scala$collection$parallel$mutable$ParArray$ParArrayIterator$$anonfun$$$outer */
    public /* synthetic */ ParArray.ParArrayIterator m92x23990fab() {
        return this.$outer;
    }
}
