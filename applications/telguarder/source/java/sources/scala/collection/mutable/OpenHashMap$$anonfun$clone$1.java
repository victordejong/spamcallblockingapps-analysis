package scala.collection.mutable;

import scala.Serializable;
import scala.collection.mutable.OpenHashMap;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/OpenHashMap$$anonfun$clone$1.class */
public final class OpenHashMap$$anonfun$clone$1 extends AbstractFunction1<OpenHashMap.OpenEntry<Key, Value>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final OpenHashMap it$1;

    public OpenHashMap$$anonfun$clone$1(OpenHashMap openHashMap, OpenHashMap<Key, Value> openHashMap2) {
        this.it$1 = openHashMap2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((OpenHashMap.OpenEntry) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(OpenHashMap.OpenEntry<Key, Value> openEntry) {
        this.it$1.scala$collection$mutable$OpenHashMap$$put(openEntry.key(), openEntry.hash(), openEntry.value().get());
    }
}
