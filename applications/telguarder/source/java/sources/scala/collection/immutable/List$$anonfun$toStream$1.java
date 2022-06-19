package scala.collection.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/List$$anonfun$toStream$1.class */
public final class List$$anonfun$toStream$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ List $outer;

    public List$$anonfun$toStream$1(List<A> list) {
        Objects.requireNonNull(list);
        this.$outer = list;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return ((List) this.$outer.tail()).toStream();
    }
}
