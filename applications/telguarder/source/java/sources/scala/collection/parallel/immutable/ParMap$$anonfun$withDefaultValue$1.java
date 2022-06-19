package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParMap$$anonfun$withDefaultValue$1.class */
public final class ParMap$$anonfun$withDefaultValue$1 extends AbstractFunction1<K, U> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object d$2;

    public ParMap$$anonfun$withDefaultValue$1(ParMap parMap, ParMap<K, V> parMap2) {
        this.d$2 = parMap2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [U, java.lang.Object] */
    @Override // scala.Function1
    public final U apply(K k) {
        return this.d$2;
    }
}
