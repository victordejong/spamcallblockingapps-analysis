package scala.collection.mutable;

import java.util.Objects;
import scala.Predef$;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* renamed from: scala.collection.mutable.FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1 */
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1.class */
public final class C2579xe92a0def extends AbstractFunction0<String> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ FlatHashTable$$anonfun$checkConsistent$1 $outer;
    public final int i$1;

    public C2579xe92a0def(FlatHashTable$$anonfun$checkConsistent$1 flatHashTable$$anonfun$checkConsistent$1, int i) {
        Objects.requireNonNull(flatHashTable$$anonfun$checkConsistent$1);
        this.$outer = flatHashTable$$anonfun$checkConsistent$1;
        this.i$1 = i;
    }

    @Override // scala.Function0
    public final String apply() {
        return new StringBuilder().append(this.i$1).append((Object) " ").append(this.$outer.$outer.table()[this.i$1]).append((Object) " ").append((Object) Predef$.MODULE$.refArrayOps(this.$outer.$outer.table()).mkString()).toString();
    }
}
