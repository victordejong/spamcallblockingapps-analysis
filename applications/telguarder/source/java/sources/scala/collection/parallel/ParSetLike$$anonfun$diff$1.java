package scala.collection.parallel;

import scala.Serializable;
import scala.collection.GenSet;
import scala.collection.Set;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSetLike$$anonfun$diff$1.class */
public final class ParSetLike$$anonfun$diff$1 extends AbstractFunction1<Sequential, Sequential> implements Serializable {
    public static final long serialVersionUID = 0;
    private final GenSet that$2;

    /* JADX WARN: Multi-variable type inference failed */
    public ParSetLike$$anonfun$diff$1(ParSetLike parSetLike, ParSetLike<T, Repr, Sequential> parSetLike2) {
        this.that$2 = parSetLike2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.Set] */
    public final Set apply(Set set) {
        return set.diff(this.that$2);
    }
}
