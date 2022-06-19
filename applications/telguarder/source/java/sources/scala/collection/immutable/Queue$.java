package scala.collection.immutable;

import scala.Serializable;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
import scala.collection.mutable.Builder;
import scala.collection.mutable.ListBuffer;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Queue$.class */
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

    @Override // scala.collection.generic.GenericCompanion
    public <A> Queue<A> apply(Seq<A> seq) {
        return new Queue<>(Nil$.MODULE$, seq.toList());
    }

    public <A> CanBuildFrom<Queue<?>, A, Queue<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Queue<A> empty() {
        return Queue$EmptyQueue$.MODULE$;
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Queue<A>> newBuilder() {
        return Builder.Cclass.mapResult(new ListBuffer(), new Queue$$anonfun$newBuilder$1());
    }
}
