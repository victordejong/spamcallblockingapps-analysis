package scala.collection.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.DoubleLinkedListLike;
import scala.runtime.AbstractFunction0;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/DoubleLinkedListLike$$anonfun$update$2.class */
public final class DoubleLinkedListLike$$anonfun$update$2 extends AbstractFunction0<Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ DoubleLinkedListLike $outer;
    private final int n$2;

    /* JADX WARN: Multi-variable type inference failed */
    public DoubleLinkedListLike$$anonfun$update$2(DoubleLinkedListLike doubleLinkedListLike, DoubleLinkedListLike<A, This> doubleLinkedListLike2) {
        Objects.requireNonNull(doubleLinkedListLike);
        this.$outer = doubleLinkedListLike;
        this.n$2 = doubleLinkedListLike2;
    }

    @Override // scala.Function0
    public final Nothing$ apply() {
        return DoubleLinkedListLike.Cclass.scala$collection$mutable$DoubleLinkedListLike$$outofbounds(this.$outer, this.n$2);
    }
}
