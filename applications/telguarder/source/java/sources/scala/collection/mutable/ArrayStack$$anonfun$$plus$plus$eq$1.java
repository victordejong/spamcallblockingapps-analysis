package scala.collection.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayStack$$anonfun$$plus$plus$eq$1.class */
public final class ArrayStack$$anonfun$$plus$plus$eq$1 extends AbstractFunction1<T, ArrayStack<T>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ArrayStack $outer;

    public ArrayStack$$anonfun$$plus$plus$eq$1(ArrayStack<T> arrayStack) {
        Objects.requireNonNull(arrayStack);
        this.$outer = arrayStack;
    }

    @Override // scala.Function1
    public final ArrayStack<T> apply(T t) {
        return this.$outer.$plus$eq((ArrayStack) t);
    }
}
