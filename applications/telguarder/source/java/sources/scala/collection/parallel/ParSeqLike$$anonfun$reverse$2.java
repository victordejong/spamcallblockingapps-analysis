package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$reverse$2.class */
public final class ParSeqLike$$anonfun$reverse$2 extends AbstractFunction1<Combiner<T, Repr>, Repr> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParSeqLike$$anonfun$reverse$2(ParSeqLike<T, Repr, Sequential> parSeqLike) {
    }

    public final ParSeq apply(Combiner combiner) {
        return (ParSeq) combiner.resultWithTaskSupport();
    }
}
