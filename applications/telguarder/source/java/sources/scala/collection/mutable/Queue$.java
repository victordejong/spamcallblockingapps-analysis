package scala.collection.mutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Queue$.class */
public final class Queue$ extends SeqFactory<Queue> implements Serializable {
    public static final Queue$ MODULE$ = null;

    static {
        new Queue$();
    }

    private Queue$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> CanBuildFrom<Queue<?>, A, Queue<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Queue<A>> newBuilder() {
        return new MutableList().mapResult(new Queue$$anonfun$newBuilder$1());
    }
}
