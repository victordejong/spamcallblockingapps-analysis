package scala.collection.parallel.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.immutable.Range;
import scala.collection.parallel.immutable.ParRange;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParRange$ParRangeIterator$$anonfun$psplit$1.class */
public final class ParRange$ParRangeIterator$$anonfun$psplit$1 extends AbstractFunction1<Object, ParRange.ParRangeIterator> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParRange.ParRangeIterator $outer;
    private final ObjectRef rleft$1;

    public ParRange$ParRangeIterator$$anonfun$psplit$1(ParRange.ParRangeIterator parRangeIterator, ObjectRef objectRef) {
        Objects.requireNonNull(parRangeIterator);
        this.$outer = parRangeIterator;
        this.rleft$1 = objectRef;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [T, scala.collection.immutable.Range] */
    public final ParRange.ParRangeIterator apply(int i) {
        Range take = ((Range) this.rleft$1.elem).take(i);
        ObjectRef objectRef = this.rleft$1;
        objectRef.elem = ((Range) objectRef.elem).drop(i);
        return new ParRange.ParRangeIterator(this.$outer.m97xb6b162b2(), take);
    }
}
