package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.TraversableViewLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$FlatMapped$$anonfun$foreach$3.class */
public final class TraversableViewLike$FlatMapped$$anonfun$foreach$3 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableViewLike.FlatMapped $outer;
    public final Function1 f$4;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableViewLike$FlatMapped$$anonfun$foreach$3(TraversableViewLike.FlatMapped flatMapped, TraversableViewLike<A, Coll, This>.FlatMapped<B> flatMapped2) {
        Objects.requireNonNull(flatMapped);
        this.$outer = flatMapped;
        this.f$4 = flatMapped2;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        ((GenTraversableOnce) this.$outer.mapping().apply(a)).seq().foreach(new C2576x4f41c09(this));
    }
}
