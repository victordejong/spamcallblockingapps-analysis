package scala.collection.parallel;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.parallel.SeqSplitter;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$Mapped$$anonfun$psplit$2.class */
public final class SeqSplitter$Mapped$$anonfun$psplit$2 extends AbstractFunction1<SeqSplitter<T>, SeqSplitter<T>.Mapped<S>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SeqSplitter.Mapped $outer;

    public SeqSplitter$Mapped$$anonfun$psplit$2(SeqSplitter<T>.Mapped<S> mapped) {
        Objects.requireNonNull(mapped);
        this.$outer = mapped;
    }

    public final SeqSplitter<T>.Mapped<S> apply(SeqSplitter<T> seqSplitter) {
        return seqSplitter.map((Function1) this.$outer.scala$collection$parallel$SeqSplitter$Mapped$$f);
    }
}
