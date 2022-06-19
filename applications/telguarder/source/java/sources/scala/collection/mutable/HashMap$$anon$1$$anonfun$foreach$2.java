package scala.collection.mutable;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/HashMap$$anon$1$$anonfun$foreach$2.class */
public final class HashMap$$anon$1$$anonfun$foreach$2 extends AbstractFunction1<DefaultEntry<A, B>, C> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$2;

    public HashMap$$anon$1$$anonfun$foreach$2(HashMap$$anon$1 hashMap$$anon$1, Function1 function1) {
        this.f$2 = function1;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [C, java.lang.Object] */
    public final C apply(DefaultEntry<A, B> defaultEntry) {
        return this.f$2.apply(defaultEntry.key());
    }
}
