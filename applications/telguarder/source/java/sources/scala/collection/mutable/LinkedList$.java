package scala.collection.mutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedList$.class */
public final class LinkedList$ extends SeqFactory<LinkedList> implements Serializable {
    public static final LinkedList$ MODULE$ = null;

    static {
        new LinkedList$();
    }

    private LinkedList$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> CanBuildFrom<LinkedList<?>, A, LinkedList<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> LinkedList<A> empty() {
        return new LinkedList<>();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, LinkedList<A>> newBuilder() {
        return new MutableList().mapResult(new LinkedList$$anonfun$newBuilder$1());
    }
}
