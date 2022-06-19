package scala.collection;

import scala.collection.Searching;
import scala.collection.generic.IsSeqLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/Searching$.class */
public final class Searching$ {
    public static final Searching$ MODULE$ = null;

    static {
        new Searching$();
    }

    private Searching$() {
        MODULE$ = this;
    }

    public <Repr, A> Searching.SearchImpl<Object, Repr> search(Repr repr, IsSeqLike<Repr> isSeqLike) {
        return new Searching.SearchImpl<>(isSeqLike.conversion().apply(repr));
    }
}
