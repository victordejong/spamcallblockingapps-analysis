package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stack$$anonfun$pushAll$1.class */
public final class Stack$$anonfun$pushAll$1 extends AbstractFunction2<Stack<B>, B, Stack<B>> implements Serializable {
    public static final long serialVersionUID = 0;

    public Stack$$anonfun$pushAll$1(Stack<A> stack) {
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return apply((Stack<Stack>) obj, (Stack) obj2);
    }

    public final Stack<B> apply(Stack<B> stack, B b) {
        return stack.push(b);
    }
}
