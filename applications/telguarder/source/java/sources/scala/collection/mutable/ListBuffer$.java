package scala.collection.mutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ListBuffer$.class */
public final class ListBuffer$ extends SeqFactory<ListBuffer> implements Serializable {
    public static final ListBuffer$ MODULE$ = null;

    static {
        new ListBuffer$();
    }

    private ListBuffer$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> CanBuildFrom<ListBuffer<?>, A, ListBuffer<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, ListBuffer<A>> newBuilder() {
        return new GrowingBuilder(new ListBuffer());
    }
}
