package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2$$anonfun$apply$1.class */
public final class ParHashSetCombiner$$anon$2$$anonfun$2$$anonfun$apply$1 extends AbstractFunction1<Object, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParHashSetCombiner$$anon$2$$anonfun$2 $outer;

    public ParHashSetCombiner$$anon$2$$anonfun$2$$anonfun$apply$1(ParHashSetCombiner$$anon$2$$anonfun$2 parHashSetCombiner$$anon$2$$anonfun$2) {
        Objects.requireNonNull(parHashSetCombiner$$anon$2$$anonfun$2);
        this.$outer = parHashSetCombiner$$anon$2$$anonfun$2;
    }

    @Override // scala.Function1
    public final boolean apply(Object obj) {
        return this.$outer.$outer.addEntry(obj);
    }
}
