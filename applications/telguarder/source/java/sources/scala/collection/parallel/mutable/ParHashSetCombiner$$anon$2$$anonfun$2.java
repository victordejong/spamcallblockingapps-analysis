package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.UnrolledBuffer;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2.class */
public final class ParHashSetCombiner$$anon$2$$anonfun$2 extends AbstractFunction1<UnrolledBuffer<Object>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ ParHashSetCombiner$$anon$2 $outer;

    public ParHashSetCombiner$$anon$2$$anonfun$2(ParHashSetCombiner$$anon$2 parHashSetCombiner$$anon$2) {
        Objects.requireNonNull(parHashSetCombiner$$anon$2);
        this.$outer = parHashSetCombiner$$anon$2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((UnrolledBuffer) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(UnrolledBuffer<Object> unrolledBuffer) {
        unrolledBuffer.foreach(new ParHashSetCombiner$$anon$2$$anonfun$2$$anonfun$apply$1(this));
    }

    /* renamed from: scala$collection$parallel$mutable$ParHashSetCombiner$$anon$$anonfun$$$outer */
    public /* synthetic */ ParHashSetCombiner$$anon$2 m80xccab3925() {
        return this.$outer;
    }
}
