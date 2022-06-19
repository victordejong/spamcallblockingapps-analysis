package scala.collection.immutable;

import java.util.NoSuchElementException;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$Empty$.class */
public class Stream$Empty$ extends Stream<Nothing$> {
    public static final Stream$Empty$ MODULE$ = null;

    static {
        new Stream$Empty$();
    }

    public Stream$Empty$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.collection.immutable.Stream, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public Nothing$ head() {
        throw new NoSuchElementException("head of empty stream");
    }

    @Override // scala.collection.immutable.Stream, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return true;
    }

    @Override // scala.collection.immutable.Stream, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Nothing$ tail() {
        throw new UnsupportedOperationException("tail of empty stream");
    }

    @Override // scala.collection.immutable.Stream
    public boolean tailDefined() {
        return false;
    }
}
