package scala.collection.parallel.mutable;

import scala.Serializable;
import scala.collection.parallel.mutable.ParMap;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParMap$WithDefault$$anonfun$withDefaultValue$2.class */
public final class ParMap$WithDefault$$anonfun$withDefaultValue$2 extends AbstractFunction1<K, V> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object d$1;

    public ParMap$WithDefault$$anonfun$withDefaultValue$2(ParMap.WithDefault withDefault, ParMap.WithDefault<K, V> withDefault2) {
        this.d$1 = withDefault2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [V, java.lang.Object] */
    @Override // scala.Function1
    public final V apply(K k) {
        return this.d$1;
    }
}
