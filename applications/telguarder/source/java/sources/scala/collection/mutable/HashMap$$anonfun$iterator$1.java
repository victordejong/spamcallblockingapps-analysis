package scala.collection.mutable;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/HashMap$$anonfun$iterator$1.class */
public final class HashMap$$anonfun$iterator$1 extends AbstractFunction1<DefaultEntry<A, B>, Tuple2<A, B>> implements Serializable {
    public static final long serialVersionUID = 0;

    public HashMap$$anonfun$iterator$1(HashMap<A, B> hashMap) {
    }

    public final Tuple2<A, B> apply(DefaultEntry<A, B> defaultEntry) {
        return new Tuple2<>(defaultEntry.key(), defaultEntry.value());
    }
}
