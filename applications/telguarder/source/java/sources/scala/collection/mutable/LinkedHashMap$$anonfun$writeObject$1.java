package scala.collection.mutable;

import java.io.ObjectOutputStream;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedHashMap$$anonfun$writeObject$1.class */
public final class LinkedHashMap$$anonfun$writeObject$1 extends AbstractFunction1<LinkedEntry<A, B>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectOutputStream out$1;

    /* JADX WARN: Multi-variable type inference failed */
    public LinkedHashMap$$anonfun$writeObject$1(LinkedHashMap linkedHashMap, LinkedHashMap<A, B> linkedHashMap2) {
        this.out$1 = linkedHashMap2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((LinkedEntry) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(LinkedEntry<A, B> linkedEntry) {
        this.out$1.writeObject(linkedEntry.key());
        this.out$1.writeObject(linkedEntry.value());
    }
}
