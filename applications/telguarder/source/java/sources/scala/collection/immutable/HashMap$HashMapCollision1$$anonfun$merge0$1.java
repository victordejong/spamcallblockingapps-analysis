package scala.collection.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.immutable.HashMap;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashMap$HashMapCollision1$$anonfun$merge0$1.class */
public final class HashMap$HashMapCollision1$$anonfun$merge0$1 extends AbstractFunction1<Tuple2<A, B>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ HashMap.HashMapCollision1 $outer;
    private final int level$1;
    private final ObjectRef m$1;
    private final HashMap.Merger merger$1;

    public HashMap$HashMapCollision1$$anonfun$merge0$1(HashMap.HashMapCollision1 hashMapCollision1, int i, HashMap.Merger merger, ObjectRef objectRef) {
        Objects.requireNonNull(hashMapCollision1);
        this.$outer = hashMapCollision1;
        this.level$1 = i;
        this.merger$1 = merger;
        this.m$1 = objectRef;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Tuple2) obj);
        return BoxedUnit.UNIT;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, scala.collection.immutable.HashMap] */
    public final void apply(Tuple2<A, B> tuple2) {
        ObjectRef objectRef = this.m$1;
        objectRef.elem = ((HashMap) objectRef.elem).updated0(tuple2.mo269_1(), this.$outer.hash(), this.level$1, tuple2.mo268_2(), tuple2, this.merger$1);
    }
}
