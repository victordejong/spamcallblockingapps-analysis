package scala.collection.mutable;

import scala.Function1;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.collection.mutable.OpenHashMap;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/OpenHashMap$$anonfun$foreachUndeletedEntry$1.class */
public final class OpenHashMap$$anonfun$foreachUndeletedEntry$1 extends AbstractFunction1<OpenHashMap.OpenEntry<Key, Value>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$1;

    public OpenHashMap$$anonfun$foreachUndeletedEntry$1(OpenHashMap openHashMap, OpenHashMap<Key, Value> openHashMap2) {
        this.f$1 = openHashMap2;
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
            this.f$1.apply(openEntry);
        }
    }
}
