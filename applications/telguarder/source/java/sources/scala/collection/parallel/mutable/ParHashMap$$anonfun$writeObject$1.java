package scala.collection.parallel.mutable;

import java.io.ObjectOutputStream;
import scala.Serializable;
import scala.collection.mutable.DefaultEntry;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMap$$anonfun$writeObject$1.class */
public final class ParHashMap$$anonfun$writeObject$1 extends AbstractFunction1<DefaultEntry<K, V>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectOutputStream out$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ParHashMap$$anonfun$writeObject$1(ParHashMap parHashMap, ParHashMap<K, V> parHashMap2) {
        this.out$1 = parHashMap2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((DefaultEntry) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(DefaultEntry<K, V> defaultEntry) {
        this.out$1.writeObject(defaultEntry.key());
        this.out$1.writeObject(defaultEntry.value());
    }
}
