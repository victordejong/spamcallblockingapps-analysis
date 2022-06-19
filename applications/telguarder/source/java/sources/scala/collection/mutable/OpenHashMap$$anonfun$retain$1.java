package scala.collection.mutable;

import java.util.Objects;
import scala.Function2;
import scala.None$;
import scala.Serializable;
import scala.collection.mutable.OpenHashMap;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/OpenHashMap$$anonfun$retain$1.class */
public final class OpenHashMap$$anonfun$retain$1 extends AbstractFunction1<OpenHashMap.OpenEntry<Key, Value>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ OpenHashMap $outer;
    private final Function2 f$4;

    /* JADX WARN: Multi-variable type inference failed */
    public OpenHashMap$$anonfun$retain$1(OpenHashMap openHashMap, OpenHashMap<Key, Value> openHashMap2) {
        Objects.requireNonNull(openHashMap);
        this.$outer = openHashMap;
        this.f$4 = openHashMap2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((OpenHashMap.OpenEntry) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(OpenHashMap.OpenEntry<Key, Value> openEntry) {
        if (!BoxesRunTime.unboxToBoolean(this.f$4.apply(openEntry.key(), openEntry.value().get()))) {
            openEntry.value_$eq(None$.MODULE$);
            OpenHashMap openHashMap = this.$outer;
            openHashMap.scala$collection$mutable$OpenHashMap$$size_$eq(openHashMap.size() - 1);
            OpenHashMap openHashMap2 = this.$outer;
            openHashMap2.scala$collection$mutable$OpenHashMap$$deleted_$eq(openHashMap2.scala$collection$mutable$OpenHashMap$$deleted() + 1);
        }
    }
}
