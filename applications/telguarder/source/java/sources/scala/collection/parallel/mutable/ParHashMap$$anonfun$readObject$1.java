package scala.collection.parallel.mutable;

import java.io.ObjectInputStream;
import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.DefaultEntry;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMap$$anonfun$readObject$1.class */
public final class ParHashMap$$anonfun$readObject$1 extends AbstractFunction0<DefaultEntry<K, V>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParHashMap $outer;
    private final ObjectInputStream in$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ParHashMap$$anonfun$readObject$1(ParHashMap parHashMap, ParHashMap<K, V> parHashMap2) {
        Objects.requireNonNull(parHashMap);
        this.$outer = parHashMap;
        this.in$1 = parHashMap2;
    }

    @Override // scala.Function0
    public final DefaultEntry<K, V> apply() {
        return this.$outer.createNewEntry((ParHashMap) this.in$1.readObject(), this.in$1.readObject());
    }
}
