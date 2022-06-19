package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Vector$$anonfun$$plus$plus$1.class */
public final class Vector$$anonfun$$plus$plus$1 extends AbstractFunction1<B, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef v$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Vector$$anonfun$$plus$plus$1(Vector vector, Vector<A> vector2) {
        this.v$1 = vector2;
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [scala.collection.immutable.Vector, T] */
    @Override // scala.Function1
    public final void apply(B b) {
        ObjectRef objectRef = this.v$1;
        objectRef.elem = (Vector) ((Vector) objectRef.elem).$colon$plus(b, Vector$.MODULE$.canBuildFrom());
    }
}
