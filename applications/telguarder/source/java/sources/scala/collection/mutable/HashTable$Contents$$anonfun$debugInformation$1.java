package scala.collection.mutable;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.DebugUtils$;
import scala.collection.mutable.HashTable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1.class */
public final class HashTable$Contents$$anonfun$debugInformation$1 extends AbstractFunction1<Function1<Object, BoxedUnit>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ HashTable.Contents $outer;

    public HashTable$Contents$$anonfun$debugInformation$1(HashTable.Contents<A, Entry> contents) {
        Objects.requireNonNull(contents);
        this.$outer = contents;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Function1) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Function1<Object, BoxedUnit> function1) {
        function1.apply("Hash table contents");
        function1.apply("-------------------");
        function1.apply(new StringBuilder().append((Object) "Table: [").append((Object) DebugUtils$.MODULE$.arrayString(this.$outer.table(), 0, this.$outer.table().length)).append((Object) "]").toString());
        function1.apply(new StringBuilder().append((Object) "Table size: ").append(BoxesRunTime.boxToInteger(this.$outer.tableSize())).toString());
        function1.apply(new StringBuilder().append((Object) "Load factor: ").append(BoxesRunTime.boxToInteger(this.$outer.loadFactor())).toString());
        function1.apply(new StringBuilder().append((Object) "Seedvalue: ").append(BoxesRunTime.boxToInteger(this.$outer.seedvalue())).toString());
        function1.apply(new StringBuilder().append((Object) "Threshold: ").append(BoxesRunTime.boxToInteger(this.$outer.threshold())).toString());
        function1.apply(new StringBuilder().append((Object) "Sizemap: [").append((Object) DebugUtils$.MODULE$.arrayString(this.$outer.sizemap(), 0, this.$outer.sizemap().length)).append((Object) "]").toString());
    }
}
