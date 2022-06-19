package scala.collection.parallel;

import scala.Serializable;
import scala.collection.GenSeq;
import scala.collection.Seq;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$diff$1.class */
public final class ParSeqLike$$anonfun$diff$1 extends AbstractFunction1<Sequential, Sequential> implements Serializable {
    public static final long serialVersionUID = 0;
    private final GenSeq that$6;

    /* JADX WARN: Multi-variable type inference failed */
    public ParSeqLike$$anonfun$diff$1(ParSeqLike parSeqLike, ParSeqLike<T, Repr, Sequential> parSeqLike2) {
        this.that$6 = parSeqLike2;
    }

    public final Seq apply(Seq seq) {
        return seq.diff(this.that$6);
    }
}
