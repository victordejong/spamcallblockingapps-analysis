package scala.collection.parallel;

import scala.Serializable;
import scala.collection.Seq;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$distinct$1.class */
public final class ParSeqLike$$anonfun$distinct$1 extends AbstractFunction1<Sequential, Sequential> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParSeqLike$$anonfun$distinct$1(ParSeqLike<T, Repr, Sequential> parSeqLike) {
    }

    public final Seq apply(Seq seq) {
        return seq.distinct();
    }
}
