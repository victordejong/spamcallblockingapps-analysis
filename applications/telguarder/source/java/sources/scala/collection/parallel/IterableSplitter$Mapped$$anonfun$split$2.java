package scala.collection.parallel;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.parallel.IterableSplitter;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$Mapped$$anonfun$split$2.class */
public final class IterableSplitter$Mapped$$anonfun$split$2 extends AbstractFunction1<IterableSplitter<T>, IterableSplitter<T>.Mapped<S>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ IterableSplitter.Mapped $outer;

    public IterableSplitter$Mapped$$anonfun$split$2(IterableSplitter<T>.Mapped<S> mapped) {
        Objects.requireNonNull(mapped);
        this.$outer = mapped;
    }

    public final IterableSplitter<T>.Mapped<S> apply(IterableSplitter<T> iterableSplitter) {
        return iterableSplitter.map((Function1) this.$outer.scala$collection$parallel$IterableSplitter$Mapped$$f);
    }
}
