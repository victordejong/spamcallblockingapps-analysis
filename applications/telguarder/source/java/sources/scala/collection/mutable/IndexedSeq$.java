package scala.collection.mutable;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.SeqFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeq$.class */
public final class IndexedSeq$ extends SeqFactory<IndexedSeq> {
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
        return new ArrayBuffer();
    }
}
