package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction0$mcV$sp;
import scala.runtime.IntRef;
/* renamed from: scala.collection.TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1 */
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1.class */
public final class C2575xfc37236b extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ TraversableLike $outer;
    public final Builder b$9;
    public final int from$1;
    public final IntRef i$1;
    public final int until$1;

    public C2575xfc37236b(TraversableLike traversableLike, int i, int i2, Builder builder, IntRef intRef) {
        Objects.requireNonNull(traversableLike);
        this.$outer = traversableLike;
        this.from$1 = i;
        this.until$1 = i2;
        this.b$9 = builder;
        this.i$1 = intRef;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.$outer.foreach(new C2574xe2f31145(this));
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.foreach(new C2574xe2f31145(this));
    }
}
