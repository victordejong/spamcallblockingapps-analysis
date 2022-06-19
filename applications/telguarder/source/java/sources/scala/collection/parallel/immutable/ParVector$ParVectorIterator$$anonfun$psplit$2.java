package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.collection.immutable.Vector;
import scala.collection.parallel.immutable.ParVector;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$2.class */
public final class ParVector$ParVectorIterator$$anonfun$psplit$2 extends AbstractFunction1<Vector<T>, ParVector<T>.ParVectorIterator> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParVector$ParVectorIterator$$anonfun$psplit$2(ParVector<T>.ParVectorIterator parVectorIterator) {
    }

    public final ParVector<T>.ParVectorIterator apply(Vector<T> vector) {
        return (ParVector.ParVectorIterator) new ParVector(vector).splitter();
    }
}
