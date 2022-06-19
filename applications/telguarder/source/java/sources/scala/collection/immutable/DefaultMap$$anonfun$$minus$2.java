package scala.collection.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/DefaultMap$$anonfun$$minus$2.class */
public final class DefaultMap$$anonfun$$minus$2 extends AbstractFunction1<Tuple2<A, B>, Builder<Tuple2<A, B>, Map<A, B>>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$1;

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultMap$$anonfun$$minus$2(DefaultMap defaultMap, DefaultMap<A, B> defaultMap2) {
        this.b$1 = defaultMap2;
    }

    public final Builder<Tuple2<A, B>, Map<A, B>> apply(Tuple2<A, B> tuple2) {
        return this.b$1.$plus$eq((Builder) tuple2);
    }
}
