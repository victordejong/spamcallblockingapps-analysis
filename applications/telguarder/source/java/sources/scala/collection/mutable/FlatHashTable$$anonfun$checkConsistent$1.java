package scala.collection.mutable;

import java.util.Objects;
import scala.Predef$;
import scala.Serializable;
import scala.runtime.AbstractFunction1$mcVI$sp;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1.class */
public final class FlatHashTable$$anonfun$checkConsistent$1 extends AbstractFunction1$mcVI$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ FlatHashTable $outer;

    public FlatHashTable$$anonfun$checkConsistent$1(FlatHashTable<A> flatHashTable) {
        Objects.requireNonNull(flatHashTable);
        this.$outer = flatHashTable;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ BoxedUnit apply(Object obj) {
        apply(BoxesRunTime.unboxToInt(obj));
        return BoxedUnit.UNIT;
    }

    @Override // scala.Function1$mcVI$sp
    public final void apply(int i) {
        apply$mcVI$sp(i);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public void apply$mcVI$sp(int i) {
        if (this.$outer.table()[i] != null) {
            FlatHashTable flatHashTable = this.$outer;
            if (flatHashTable.containsElem(flatHashTable.entryToElem(flatHashTable.table()[i]))) {
                return;
            }
            Predef$ predef$ = Predef$.MODULE$;
            throw new AssertionError(new StringBuilder().append((Object) "assertion failed: ").append((Object) new C2579xe92a0def(this, i).apply()).toString());
        }
    }

    public /* synthetic */ FlatHashTable scala$collection$mutable$FlatHashTable$$anonfun$$$outer() {
        return this.$outer;
    }
}
