package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Map$$anonfun$withDefaultValue$1.class */
public final class Map$$anonfun$withDefaultValue$1 extends AbstractFunction1<A, B1> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object d$2;

    public Map$$anonfun$withDefaultValue$1(Map map, Map<A, B> map2) {
        this.d$2 = map2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, B1] */
    @Override // scala.Function1
    public final B1 apply(A a) {
        return this.d$2;
    }
}
