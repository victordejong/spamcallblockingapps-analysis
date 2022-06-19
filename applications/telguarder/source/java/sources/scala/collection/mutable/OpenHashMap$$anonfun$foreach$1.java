package scala.collection.mutable;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.mutable.OpenHashMap;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.sys.package$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/OpenHashMap$$anonfun$foreach$1.class */
public final class OpenHashMap$$anonfun$foreach$1 extends AbstractFunction1<OpenHashMap.OpenEntry<Key, Value>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ OpenHashMap $outer;
    private final Function1 f$2;
    private final int startModCount$1;

    public OpenHashMap$$anonfun$foreach$1(OpenHashMap openHashMap, Function1 function1, int i) {
        Objects.requireNonNull(openHashMap);
        this.$outer = openHashMap;
        this.f$2 = function1;
        this.startModCount$1 = i;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((OpenHashMap.OpenEntry) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(OpenHashMap.OpenEntry<Key, Value> openEntry) {
        if (this.$outer.scala$collection$mutable$OpenHashMap$$modCount == this.startModCount$1) {
            this.f$2.apply(new Tuple2(openEntry.key(), openEntry.value().get()));
            return;
        }
        throw package$.MODULE$.error("Concurrent Modification");
    }
}
