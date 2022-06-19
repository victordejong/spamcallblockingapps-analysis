package scala.collection.mutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArraySeq$.class */
public final class ArraySeq$ extends SeqFactory<ArraySeq> implements Serializable {
    public static final ArraySeq$ MODULE$ = null;

    static {
        new ArraySeq$();
    }

    private ArraySeq$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> CanBuildFrom<ArraySeq<?>, A, ArraySeq<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, ArraySeq<A>> newBuilder() {
        return new ArrayBuffer().mapResult(new ArraySeq$$anonfun$newBuilder$1());
    }
}
