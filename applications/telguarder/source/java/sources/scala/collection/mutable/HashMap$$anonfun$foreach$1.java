package scala.collection.mutable;

import scala.Function1;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/HashMap$$anonfun$foreach$1.class */
public final class HashMap$$anonfun$foreach$1 extends AbstractFunction1<DefaultEntry<A, B>, C> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$1;

    public HashMap$$anonfun$foreach$1(HashMap hashMap, HashMap<A, B> hashMap2) {
        this.f$1 = hashMap2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [C, java.lang.Object] */
    public final C apply(DefaultEntry<A, B> defaultEntry) {
        return this.f$1.apply(new Tuple2(defaultEntry.key(), defaultEntry.value()));
    }
}
