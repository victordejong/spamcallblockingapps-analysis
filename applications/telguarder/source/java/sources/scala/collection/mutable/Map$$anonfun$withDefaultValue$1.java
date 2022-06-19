package scala.collection.mutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Map$$anonfun$withDefaultValue$1.class */
public final class Map$$anonfun$withDefaultValue$1 extends AbstractFunction1<A, B> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object d$2;

    public Map$$anonfun$withDefaultValue$1(Map map, Map<A, B> map2) {
        this.d$2 = map2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
    @Override // scala.Function1
    public final B apply(A a) {
        return this.d$2;
    }
}
