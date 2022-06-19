package scala.collection.immutable;

import java.io.ObjectOutputStream;
import scala.Serializable;
import scala.collection.immutable.HashSet;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashSet$SerializationProxy$$anonfun$writeObject$1.class */
public final class HashSet$SerializationProxy$$anonfun$writeObject$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectOutputStream out$1;

    /* JADX WARN: Multi-variable type inference failed */
    public HashSet$SerializationProxy$$anonfun$writeObject$1(HashSet.SerializationProxy serializationProxy, HashSet.SerializationProxy<A, B> serializationProxy2) {
        this.out$1 = serializationProxy2;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        this.out$1.writeObject(a);
    }
}
