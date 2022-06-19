package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.DebugUtils$;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.mutable.ParFlatHashTable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* renamed from: scala.collection.parallel.mutable.ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1 */
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParFlatHashTable$ParFlatHashTableIterator$$anonfun$debugInformation$1.class */
public final class C2589x363e3329 extends AbstractFunction1<Function1<String, BoxedUnit>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParFlatHashTable.ParFlatHashTableIterator $outer;

    public C2589x363e3329(ParFlatHashTable<T>.ParFlatHashTableIterator parFlatHashTableIterator) {
        Objects.requireNonNull(parFlatHashTableIterator);
        this.$outer = parFlatHashTableIterator;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Function1) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Function1<String, BoxedUnit> function1) {
        function1.apply("Parallel flat hash table iterator");
        function1.apply("---------------------------------");
        function1.apply(new StringBuilder().append((Object) "Traversed/total: ").append(BoxesRunTime.boxToInteger(this.$outer.f1604x964fc653)).append((Object) " / ").append(BoxesRunTime.boxToInteger(this.$outer.totalsize())).toString());
        function1.apply(new StringBuilder().append((Object) "Table idx/until: ").append(BoxesRunTime.boxToInteger(this.$outer.idx())).append((Object) " / ").append(BoxesRunTime.boxToInteger(this.$outer.until())).toString());
        function1.apply(new StringBuilder().append((Object) "Table length: ").append(BoxesRunTime.boxToInteger(this.$outer.f1603xd4b24cd7.length)).toString());
        function1.apply("Table: ");
        function1.apply(DebugUtils$.MODULE$.arrayString(this.$outer.f1603xd4b24cd7, 0, this.$outer.f1603xd4b24cd7.length));
        function1.apply("Sizemap: ");
        function1.apply(DebugUtils$.MODULE$.arrayString(this.$outer.m86x75e43556().sizemap(), 0, this.$outer.m86x75e43556().sizemap().length));
    }
}
