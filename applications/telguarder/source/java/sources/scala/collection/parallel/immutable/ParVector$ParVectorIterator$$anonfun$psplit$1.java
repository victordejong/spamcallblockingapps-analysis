package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.collection.immutable.Vector;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.parallel.immutable.ParVector;
import scala.runtime.AbstractFunction1$mcVI$sp;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$1.class */
public final class ParVector$ParVectorIterator$$anonfun$psplit$1 extends AbstractFunction1$mcVI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef remvector$1;
    private final ArrayBuffer splitted$1;

    public ParVector$ParVectorIterator$$anonfun$psplit$1(ParVector.ParVectorIterator parVectorIterator, ObjectRef objectRef, ArrayBuffer arrayBuffer) {
        this.remvector$1 = objectRef;
        this.splitted$1 = arrayBuffer;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ BoxedUnit apply(Object obj) {
        apply(BoxesRunTime.unboxToInt(obj));
        return BoxedUnit.UNIT;
    }

    @Override // scala.Function1$mcVI$sp
    public final void apply(int i) {
        apply$mcVI$sp(i);
    }

    /* JADX WARN: Type inference failed for: r1v8, types: [scala.collection.immutable.Vector, T] */
    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public void apply$mcVI$sp(int i) {
        this.splitted$1.$plus$eq((ArrayBuffer) ((Vector) this.remvector$1.elem).take(i));
        ObjectRef objectRef = this.remvector$1;
        objectRef.elem = ((Vector) objectRef.elem).drop(i);
    }
}
