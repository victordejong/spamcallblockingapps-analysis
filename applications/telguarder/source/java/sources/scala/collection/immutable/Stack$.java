package scala.collection.immutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stack$.class */
public final class Stack$ extends SeqFactory<Stack> implements Serializable {
    public static final Stack$ MODULE$ = null;

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
    public <A> Builder<A, Stack<A>> newBuilder() {
        return new ArrayBuffer().mapResult(new Stack$$anonfun$newBuilder$1());
    }
}
