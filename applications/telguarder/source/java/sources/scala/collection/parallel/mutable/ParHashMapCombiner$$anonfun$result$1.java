package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.DefaultEntry;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.VolatileObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMapCombiner$$anonfun$result$1.class */
public final class ParHashMapCombiner$$anonfun$result$1 extends AbstractFunction1<DefaultEntry<K, V>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParHashMapCombiner $outer;
    private final VolatileObjectRef table$module$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ParHashMapCombiner$$anonfun$result$1(ParHashMapCombiner parHashMapCombiner, ParHashMapCombiner<K, V> parHashMapCombiner2) {
        Objects.requireNonNull(parHashMapCombiner);
        this.$outer = parHashMapCombiner;
        this.table$module$1 = parHashMapCombiner2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((DefaultEntry) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(DefaultEntry<K, V> defaultEntry) {
        this.$outer.scala$collection$parallel$mutable$ParHashMapCombiner$$table$1(this.table$module$1).insertEntry(defaultEntry);
    }
}
