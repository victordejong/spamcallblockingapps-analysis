package scala.collection.parallel.mutable;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.collection.parallel.mutable.ParArray;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$2.class */
public final class ParArray$ParArrayIterator$$anonfun$2 extends AbstractFunction1<S, Builder<S, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder cb$2;

    /* JADX WARN: Multi-variable type inference failed */
    public ParArray$ParArrayIterator$$anonfun$2(ParArray.ParArrayIterator parArrayIterator, ParArray<T>.ParArrayIterator parArrayIterator2) {
        this.cb$2 = parArrayIterator2;
    }

    @Override // scala.Function1
    public final Builder<S, That> apply(S s) {
        return this.cb$2.$plus$eq((Builder) s);
    }
}
