package scala.collection.mutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
import scala.collection.immutable.Nil$;
import scala.collection.mutable.Stack;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Stack$.class */
public final class Stack$ extends SeqFactory<Stack> implements Serializable {
    public static final Stack$ MODULE$ = null;
    private final Stack<Nothing$> empty = new Stack<>(Nil$.MODULE$);

    static {
        new Stack$();
    }

    private Stack$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> CanBuildFrom<Stack<?>, A, Stack<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public Stack<Nothing$> empty() {
        return this.empty;
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Stack<A>> newBuilder() {
        return new Stack.StackBuilder();
    }
}
