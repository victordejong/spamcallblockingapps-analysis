package scala.collection.mutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/MutableList$.class */
public final class MutableList$ extends SeqFactory<MutableList> implements Serializable {
    public static final MutableList$ MODULE$ = null;

    static {
        new MutableList$();
    }

    private MutableList$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> CanBuildFrom<MutableList<?>, A, MutableList<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, MutableList<A>> newBuilder() {
        return new MutableList();
    }
}
