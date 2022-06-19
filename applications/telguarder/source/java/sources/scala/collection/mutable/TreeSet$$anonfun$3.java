package scala.collection.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/TreeSet$$anonfun$3.class */
public final class TreeSet$$anonfun$3 extends AbstractFunction2<A, A, A> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TreeSet $outer;

    public TreeSet$$anonfun$3(TreeSet<A> treeSet) {
        Objects.requireNonNull(treeSet);
        this.$outer = treeSet;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [A, java.lang.Object] */
    @Override // scala.Function2
    public final A apply(A a, A a2) {
        return this.$outer.ordering().max(a, a2);
    }
}
