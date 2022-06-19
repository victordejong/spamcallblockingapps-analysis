package scala.collection.mutable;

import java.io.ObjectInputStream;
import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedHashMap$$anonfun$readObject$1.class */
public final class LinkedHashMap$$anonfun$readObject$1 extends AbstractFunction0<LinkedEntry<A, B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ LinkedHashMap $outer;
    private final ObjectInputStream in$1;

    /* JADX WARN: Multi-variable type inference failed */
    public LinkedHashMap$$anonfun$readObject$1(LinkedHashMap linkedHashMap, LinkedHashMap<A, B> linkedHashMap2) {
        Objects.requireNonNull(linkedHashMap);
        this.$outer = linkedHashMap;
        this.in$1 = linkedHashMap2;
    }

    @Override // scala.Function0
    public final LinkedEntry<A, B> apply() {
        return this.$outer.createNewEntry((LinkedHashMap) this.in$1.readObject(), this.in$1.readObject());
    }
}
