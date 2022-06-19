package scala.collection.parallel.mutable;

import scala.Serializable;
import scala.collection.GenTraversableOnce;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$$anonfun$fromTraversables$1.class */
public final class ParArray$$anonfun$fromTraversables$1 extends AbstractFunction1<GenTraversableOnce<T>, ResizableParArrayCombiner<T>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ResizableParArrayCombiner cb$1;

    public ParArray$$anonfun$fromTraversables$1(ResizableParArrayCombiner resizableParArrayCombiner) {
        this.cb$1 = resizableParArrayCombiner;
    }

    public final ResizableParArrayCombiner<T> apply(GenTraversableOnce<T> genTraversableOnce) {
        return (ResizableParArrayCombiner) this.cb$1.$plus$plus$eq(genTraversableOnce.seq());
    }
}
