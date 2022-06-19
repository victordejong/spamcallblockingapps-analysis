package scala.collection.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Stack$$anonfun$pushAll$1.class */
public final class Stack$$anonfun$pushAll$1 extends AbstractFunction1<A, Stack<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stack $outer;

    public Stack$$anonfun$pushAll$1(Stack<A> stack) {
        Objects.requireNonNull(stack);
        this.$outer = stack;
    }

    @Override // scala.Function1
    public final Stack<A> apply(A a) {
        return this.$outer.push(a);
    }
}
