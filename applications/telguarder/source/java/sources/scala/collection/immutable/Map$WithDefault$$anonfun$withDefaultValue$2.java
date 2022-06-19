package scala.collection.immutable;

import scala.Serializable;
import scala.collection.immutable.Map;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Map$WithDefault$$anonfun$withDefaultValue$2.class */
public final class Map$WithDefault$$anonfun$withDefaultValue$2 extends AbstractFunction1<A, B1> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object d$1;

    public Map$WithDefault$$anonfun$withDefaultValue$2(Map.WithDefault withDefault, Map.WithDefault<A, B> withDefault2) {
        this.d$1 = withDefault2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, B1] */
    @Override // scala.Function1
    public final B1 apply(A a) {
        return this.d$1;
    }
}
