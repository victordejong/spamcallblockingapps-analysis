package scala.collection.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.Some;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/TreeSet$$anonfun$iteratorFrom$1.class */
public final class TreeSet$$anonfun$iteratorFrom$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TreeSet $outer;
    private final Some x2$1;

    /* JADX WARN: Multi-variable type inference failed */
    public TreeSet$$anonfun$iteratorFrom$1(TreeSet treeSet, TreeSet<A> treeSet2) {
        Objects.requireNonNull(treeSet);
        this.$outer = treeSet;
        this.x2$1 = treeSet2;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        return this.$outer.ordering().mo36lt(a, this.x2$1.m362x());
    }
}
