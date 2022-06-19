package scala.collection.immutable;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.IndexedSeqFactory;
import scala.collection.mutable.Builder;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IndexedSeq$.class */
public final class IndexedSeq$ extends IndexedSeqFactory<IndexedSeq> {
    public static final IndexedSeq$ MODULE$ = null;

    static {
        new IndexedSeq$();
    }

    private IndexedSeq$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<IndexedSeq<?>, A, IndexedSeq<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, IndexedSeq<A>> newBuilder() {
        return Vector$.MODULE$.newBuilder();
    }
}
