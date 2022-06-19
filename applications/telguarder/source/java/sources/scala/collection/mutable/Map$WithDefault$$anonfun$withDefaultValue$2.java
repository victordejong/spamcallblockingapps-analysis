package scala.collection.mutable;

import scala.Serializable;
import scala.collection.mutable.Map;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Map$WithDefault$$anonfun$withDefaultValue$2.class */
public final class Map$WithDefault$$anonfun$withDefaultValue$2 extends AbstractFunction1<A, B> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object d$1;

    public Map$WithDefault$$anonfun$withDefaultValue$2(Map.WithDefault withDefault, Map.WithDefault<A, B> withDefault2) {
        this.d$1 = withDefault2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
    @Override // scala.Function1
    public final B apply(A a) {
        return this.d$1;
    }
}
