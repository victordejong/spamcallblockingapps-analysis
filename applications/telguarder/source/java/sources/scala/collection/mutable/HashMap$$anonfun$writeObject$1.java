package scala.collection.mutable;

import java.io.ObjectOutputStream;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/HashMap$$anonfun$writeObject$1.class */
public final class HashMap$$anonfun$writeObject$1 extends AbstractFunction1<DefaultEntry<A, B>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectOutputStream out$1;

    /* JADX WARN: Multi-variable type inference failed */
    public HashMap$$anonfun$writeObject$1(HashMap hashMap, HashMap<A, B> hashMap2) {
        this.out$1 = hashMap2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((DefaultEntry) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(DefaultEntry<A, B> defaultEntry) {
        this.out$1.writeObject(defaultEntry.key());
        this.out$1.writeObject(defaultEntry.value());
    }
}
