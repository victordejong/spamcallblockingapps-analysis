package scala.collection.mutable;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/DefaultMapModel$$anonfun$iterator$1.class */
public final class DefaultMapModel$$anonfun$iterator$1 extends AbstractFunction1<DefaultEntry<A, B>, Tuple2<A, B>> implements Serializable {
    public static final long serialVersionUID = 0;

    public DefaultMapModel$$anonfun$iterator$1(DefaultMapModel<A, B> defaultMapModel) {
    }

    public final Tuple2<A, B> apply(DefaultEntry<A, B> defaultEntry) {
        return new Tuple2<>(defaultEntry.key(), defaultEntry.value());
    }
}
