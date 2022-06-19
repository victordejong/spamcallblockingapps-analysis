package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$Zipped$$anonfun$psplit$3.class */
public final class SeqSplitter$Zipped$$anonfun$psplit$3 extends AbstractFunction1<Tuple2<SeqSplitter<T>, SeqSplitter<S>>, SeqSplitter<T>.Zipped<S>> implements Serializable {
    public static final long serialVersionUID = 0;

    public SeqSplitter$Zipped$$anonfun$psplit$3(SeqSplitter<T>.Zipped<S> zipped) {
    }

    public final SeqSplitter<T>.Zipped<S> apply(Tuple2<SeqSplitter<T>, SeqSplitter<S>> tuple2) {
        return ((SeqSplitter) tuple2.mo269_1()).zipParSeq((SeqSplitter) tuple2.mo268_2());
    }
}
