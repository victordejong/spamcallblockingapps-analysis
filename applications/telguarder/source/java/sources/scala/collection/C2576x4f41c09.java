package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* renamed from: scala.collection.TraversableViewLike$FlatMapped$$anonfun$foreach$3$$anonfun$apply$1 */
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3$$anonfun$apply$1.class */
public final class C2576x4f41c09 extends AbstractFunction1<B, U> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableViewLike$FlatMapped$$anonfun$foreach$3 $outer;

    public C2576x4f41c09(TraversableViewLike<A, Coll, This>.TraversableViewLike$FlatMapped$$anonfun$foreach$3<B>.3 traversableViewLike$FlatMapped$$anonfun$foreach$3) {
        Objects.requireNonNull(traversableViewLike$FlatMapped$$anonfun$foreach$3);
        this.$outer = traversableViewLike$FlatMapped$$anonfun$foreach$3;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [U, java.lang.Object] */
    @Override // scala.Function1
    public final U apply(B b) {
        return this.$outer.f$4.apply(b);
    }
}
