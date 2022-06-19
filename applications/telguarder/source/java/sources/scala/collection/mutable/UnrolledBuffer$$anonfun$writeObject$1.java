package scala.collection.mutable;

import java.io.ObjectOutputStream;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/UnrolledBuffer$$anonfun$writeObject$1.class */
public final class UnrolledBuffer$$anonfun$writeObject$1 extends AbstractFunction1<T, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectOutputStream out$1;

    /* JADX WARN: Multi-variable type inference failed */
    public UnrolledBuffer$$anonfun$writeObject$1(UnrolledBuffer unrolledBuffer, UnrolledBuffer<T> unrolledBuffer2) {
        this.out$1 = unrolledBuffer2;
    }

    @Override // scala.Function1
    public final void apply(T t) {
        this.out$1.writeObject(t);
    }
}
