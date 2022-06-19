package scala.collection.mutable;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SeqLike$$anonfun$transform$1.class */
public final class SeqLike$$anonfun$transform$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SeqLike $outer;
    private final Function1 f$1;
    private final IntRef i$1;

    public SeqLike$$anonfun$transform$1(SeqLike seqLike, IntRef intRef, Function1 function1) {
        Objects.requireNonNull(seqLike);
        this.$outer = seqLike;
        this.i$1 = intRef;
        this.f$1 = function1;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        this.$outer.update(this.i$1.elem, this.f$1.apply(a));
        this.i$1.elem++;
    }
}
