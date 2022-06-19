package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.immutable.Stream;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/Iterator$$anonfun$toStream$1.class */
public final class Iterator$$anonfun$toStream$1 extends AbstractFunction0<Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Iterator $outer;

    public Iterator$$anonfun$toStream$1(Iterator<A> iterator) {
        Objects.requireNonNull(iterator);
        this.$outer = iterator;
    }

    @Override // scala.Function0
    public final Stream<A> apply() {
        return this.$outer.toStream();
    }
}
