package scala.collection;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.SortedMap;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/SortedMap$Default$$anonfun$$minus$2.class */
public final class SortedMap$Default$$anonfun$$minus$2 extends AbstractFunction1<Tuple2<A, B>, Builder<Tuple2<A, B>, SortedMap<A, B>>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$1;

    /* JADX WARN: Multi-variable type inference failed */
    public SortedMap$Default$$anonfun$$minus$2(SortedMap.Default r4, SortedMap.Default<A, B> r5) {
        this.b$1 = r5;
    }

    public final Builder<Tuple2<A, B>, SortedMap<A, B>> apply(Tuple2<A, B> tuple2) {
        return this.b$1.$plus$eq((Builder) tuple2);
    }
}
