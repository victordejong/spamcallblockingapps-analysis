package scala.collection.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.immutable.HashSet;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashSet$HashSetCollision1$$anonfun$2.class */
public final class HashSet$HashSetCollision1$$anonfun$2 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ HashSet.HashSetCollision1 $outer;
    private final int level$3;
    private final HashSet that$3;

    public HashSet$HashSetCollision1$$anonfun$2(HashSet.HashSetCollision1 hashSetCollision1, HashSet hashSet, int i) {
        Objects.requireNonNull(hashSetCollision1);
        this.$outer = hashSetCollision1;
        this.that$3 = hashSet;
        this.level$3 = i;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        return this.that$3.get0(a, this.$outer.hash(), this.level$3);
    }
}
