package scala.collection.mutable;

import java.util.Objects;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.collection.mutable.OpenHashMap;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/OpenHashMap$$anonfun$growTable$1.class */
public final class OpenHashMap$$anonfun$growTable$1 extends AbstractFunction1<OpenHashMap.OpenEntry<Key, Value>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ OpenHashMap $outer;

    public OpenHashMap$$anonfun$growTable$1(OpenHashMap<Key, Value> openHashMap) {
        Objects.requireNonNull(openHashMap);
        this.$outer = openHashMap;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((OpenHashMap.OpenEntry) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(OpenHashMap.OpenEntry<Key, Value> openEntry) {
        if (openEntry != 0) {
            Option value = openEntry.value();
            None$ none$ = None$.MODULE$;
            if (value != null && value.equals(none$)) {
                return;
            }
            this.$outer.scala$collection$mutable$OpenHashMap$$addEntry(openEntry);
        }
    }
}
