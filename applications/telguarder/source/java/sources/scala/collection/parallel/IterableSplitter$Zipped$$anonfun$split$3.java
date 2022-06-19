package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$Zipped$$anonfun$split$3.class */
public final class IterableSplitter$Zipped$$anonfun$split$3 extends AbstractFunction1<Tuple2<IterableSplitter<T>, SeqSplitter<S>>, IterableSplitter<T>.Zipped<S>> implements Serializable {
    public static final long serialVersionUID = 0;

    public IterableSplitter$Zipped$$anonfun$split$3(IterableSplitter<T>.Zipped<S> zipped) {
    }

    public final IterableSplitter<T>.Zipped<S> apply(Tuple2<IterableSplitter<T>, SeqSplitter<S>> tuple2) {
        return ((IterableSplitter) tuple2.mo269_1()).zipParSeq((SeqSplitter) tuple2.mo268_2());
    }
}
