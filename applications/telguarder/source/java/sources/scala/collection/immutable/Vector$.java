package scala.collection.immutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.IndexedSeqFactory;
import scala.collection.mutable.Builder;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Vector$.class */
public final class Vector$ extends IndexedSeqFactory<Vector> implements Serializable {
    public static final Vector$ MODULE$ = null;
    private final int Log2ConcatFaster;
    private final Vector<Nothing$> NIL = new Vector<>(0, 0, 0);
    private final int TinyAppendFaster;

    static {
        new Vector$();
    }

    private Vector$() {
        MODULE$ = this;
    }

    private final int Log2ConcatFaster() {
        return 5;
    }

    private final int TinyAppendFaster() {
        return 2;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public Vector<Nothing$> NIL() {
        return this.NIL;
    }

    public <A> CanBuildFrom<Vector<?>, A, Vector<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Vector<A> empty() {
        return (Vector<A>) NIL();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Vector<A>> newBuilder() {
        return new VectorBuilder();
    }
}
