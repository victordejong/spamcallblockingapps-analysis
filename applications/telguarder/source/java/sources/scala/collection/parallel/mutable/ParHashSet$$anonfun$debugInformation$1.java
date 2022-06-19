package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.DebugUtils$;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashSet$$anonfun$debugInformation$1.class */
public final class ParHashSet$$anonfun$debugInformation$1 extends AbstractFunction1<Function1<Object, BoxedUnit>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParHashSet $outer;

    public ParHashSet$$anonfun$debugInformation$1(ParHashSet<T> parHashSet) {
        Objects.requireNonNull(parHashSet);
        this.$outer = parHashSet;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Function1) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Function1<Object, BoxedUnit> function1) {
        function1.apply("Parallel flat hash table set");
        function1.apply(new StringBuilder().append((Object) "No. elems: ").append(BoxesRunTime.boxToInteger(this.$outer.tableSize())).toString());
        function1.apply(new StringBuilder().append((Object) "Table length: ").append(BoxesRunTime.boxToInteger(this.$outer.table().length)).toString());
        function1.apply("Table: ");
        function1.apply(DebugUtils$.MODULE$.arrayString(this.$outer.table(), 0, this.$outer.table().length));
        function1.apply("Sizemap: ");
        function1.apply(DebugUtils$.MODULE$.arrayString(this.$outer.sizemap(), 0, this.$outer.sizemap().length));
    }
}
