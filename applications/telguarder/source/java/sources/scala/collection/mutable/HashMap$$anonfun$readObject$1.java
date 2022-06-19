package scala.collection.mutable;

import java.io.ObjectInputStream;
import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/HashMap$$anonfun$readObject$1.class */
public final class HashMap$$anonfun$readObject$1 extends AbstractFunction0<DefaultEntry<A, B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ HashMap $outer;
    private final ObjectInputStream in$1;

    /* JADX WARN: Multi-variable type inference failed */
    public HashMap$$anonfun$readObject$1(HashMap hashMap, HashMap<A, B> hashMap2) {
        Objects.requireNonNull(hashMap);
        this.$outer = hashMap;
        this.in$1 = hashMap2;
    }

    @Override // scala.Function0
    public final DefaultEntry<A, B> apply() {
        return this.$outer.createNewEntry((HashMap) this.in$1.readObject(), this.in$1.readObject());
    }
}
