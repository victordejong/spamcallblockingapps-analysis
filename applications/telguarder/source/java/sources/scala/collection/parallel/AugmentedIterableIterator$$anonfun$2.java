package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/AugmentedIterableIterator$$anonfun$2.class */
public final class AugmentedIterableIterator$$anonfun$2 extends AbstractFunction1<S, Combiner<S, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Combiner cb$1;

    /* JADX WARN: Multi-variable type inference failed */
    public AugmentedIterableIterator$$anonfun$2(AugmentedIterableIterator augmentedIterableIterator, AugmentedIterableIterator<T> augmentedIterableIterator2) {
        this.cb$1 = augmentedIterableIterator2;
    }

    @Override // scala.Function1
    public final Combiner<S, That> apply(S s) {
        return (Combiner) this.cb$1.$plus$eq((Combiner) s);
    }
}
