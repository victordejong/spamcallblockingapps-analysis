package scala.collection.parallel.mutable;

import scala.Serializable;
import scala.collection.parallel.mutable.ParHashSetCombiner;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashSetCombiner$$anonfun$parPopulate$1.class */
public final class ParHashSetCombiner$$anonfun$parPopulate$1 extends AbstractFunction1<Object, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final IntRef leftinserts$1;
    private final ParHashSetCombiner.AddingFlatHashTable table$1;

    public ParHashSetCombiner$$anonfun$parPopulate$1(ParHashSetCombiner parHashSetCombiner, ParHashSetCombiner.AddingFlatHashTable addingFlatHashTable, IntRef intRef) {
        this.table$1 = addingFlatHashTable;
        this.leftinserts$1 = intRef;
    }

    @Override // scala.Function1
    public final void apply(Object obj) {
        IntRef intRef = this.leftinserts$1;
        int i = intRef.elem;
        ParHashSetCombiner.AddingFlatHashTable addingFlatHashTable = this.table$1;
        intRef.elem = i + addingFlatHashTable.insertEntry(0, addingFlatHashTable.tableLength(), obj);
    }
}
