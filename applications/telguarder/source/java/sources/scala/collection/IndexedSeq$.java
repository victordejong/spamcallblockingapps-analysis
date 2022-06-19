package scala.collection;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.IndexedSeqFactory;
import scala.collection.mutable.Builder;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/IndexedSeq$.class */
public final class IndexedSeq$ extends IndexedSeqFactory<IndexedSeq> {
    public static final IndexedSeq$ MODULE$ = null;
    private final GenTraversableFactory<IndexedSeq>.GenericCanBuildFrom<Nothing$> ReusableCBF = new GenTraversableFactory<IndexedSeq>.GenericCanBuildFrom<Nothing$>() { // from class: scala.collection.IndexedSeq$$anon$1
        {
            IndexedSeq$ indexedSeq$ = IndexedSeq$.MODULE$;
        }

        @Override // scala.collection.generic.GenTraversableFactory.GenericCanBuildFrom, scala.collection.generic.CanBuildFrom
        public Builder<Nothing$, IndexedSeq<Nothing$>> apply() {
            return IndexedSeq$.MODULE$.newBuilder();
        }
    };

    static {
        new IndexedSeq$();
    }

    private IndexedSeq$() {
        MODULE$ = this;
    }

    @Override // scala.collection.generic.IndexedSeqFactory, scala.collection.generic.GenTraversableFactory
    public GenTraversableFactory<IndexedSeq>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return this.ReusableCBF;
    }

    public <A> CanBuildFrom<IndexedSeq<?>, A, IndexedSeq<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, IndexedSeq<A>> newBuilder() {
        return scala.collection.immutable.IndexedSeq$.MODULE$.newBuilder();
    }
}
