package scala.collection.mutable;

import java.io.ObjectOutputStream;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/FlatHashTable$$anonfun$serializeTo$1.class */
public final class FlatHashTable$$anonfun$serializeTo$1 extends AbstractFunction1<Object, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectOutputStream out$1;

    /* JADX WARN: Multi-variable type inference failed */
    public FlatHashTable$$anonfun$serializeTo$1(FlatHashTable flatHashTable, FlatHashTable<A> flatHashTable2) {
        this.out$1 = flatHashTable2;
    }

    @Override // scala.Function1
    public final void apply(Object obj) {
        this.out$1.writeObject(obj);
    }
}
