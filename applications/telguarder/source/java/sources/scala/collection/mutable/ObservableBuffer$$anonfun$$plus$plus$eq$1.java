package scala.collection.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ObservableBuffer$$anonfun$$plus$plus$eq$1.class */
public final class ObservableBuffer$$anonfun$$plus$plus$eq$1 extends AbstractFunction1<A, ObservableBuffer<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ObservableBuffer $outer;

    public ObservableBuffer$$anonfun$$plus$plus$eq$1(ObservableBuffer<A> observableBuffer) {
        Objects.requireNonNull(observableBuffer);
        this.$outer = observableBuffer;
    }

    @Override // scala.Function1
    public final ObservableBuffer<A> apply(A a) {
        return this.$outer.$plus$eq((ObservableBuffer) a);
    }
}
