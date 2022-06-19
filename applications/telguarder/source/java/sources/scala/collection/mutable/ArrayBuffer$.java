package scala.collection.mutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuffer$.class */
public final class ArrayBuffer$ extends SeqFactory<ArrayBuffer> implements Serializable {
    public static final ArrayBuffer$ MODULE$ = null;

    static {
        new ArrayBuffer$();
    }

    private ArrayBuffer$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> CanBuildFrom<ArrayBuffer<?>, A, ArrayBuffer<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, ArrayBuffer<A>> newBuilder() {
        return new ArrayBuffer();
    }
}
