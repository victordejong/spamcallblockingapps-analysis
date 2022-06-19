package scala.collection.parallel.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.Buffer;
import scala.collection.parallel.immutable.ParHashSet;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParHashSet$ParHashSetIterator$$anonfun$split$1.class */
public final class ParHashSet$ParHashSetIterator$$anonfun$split$1 extends AbstractFunction1<Buffer<T>, ParHashSet<T>.ParHashSetIterator> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParHashSet.ParHashSetIterator $outer;

    public ParHashSet$ParHashSetIterator$$anonfun$split$1(ParHashSet<T>.ParHashSetIterator parHashSetIterator) {
        Objects.requireNonNull(parHashSetIterator);
        this.$outer = parHashSetIterator;
    }

    public final ParHashSet<T>.ParHashSetIterator apply(Buffer<T> buffer) {
        return new ParHashSet.ParHashSetIterator(this.$outer.m99x306f6bd2(), buffer.iterator(), buffer.length());
    }
}
