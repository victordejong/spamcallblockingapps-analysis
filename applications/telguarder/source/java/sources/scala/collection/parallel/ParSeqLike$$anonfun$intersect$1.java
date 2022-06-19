package scala.collection.parallel;

import scala.Serializable;
import scala.collection.GenSeq;
import scala.collection.Seq;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$intersect$1.class */
public final class ParSeqLike$$anonfun$intersect$1 extends AbstractFunction1<Sequential, Sequential> implements Serializable {
    public static final long serialVersionUID = 0;
    private final GenSeq that$7;

    /* JADX WARN: Multi-variable type inference failed */
    public ParSeqLike$$anonfun$intersect$1(ParSeqLike parSeqLike, ParSeqLike<T, Repr, Sequential> parSeqLike2) {
        this.that$7 = parSeqLike2;
    }

    public final Seq apply(Seq seq) {
        return seq.intersect(this.that$7);
    }
}
