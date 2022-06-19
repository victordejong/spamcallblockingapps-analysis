package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.HashEntry;
import scala.collection.parallel.mutable.ParHashTable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$convertToArrayBuffer$1.class */
public final class ParHashTable$EntryIterator$$anonfun$convertToArrayBuffer$1 extends AbstractFunction1<Entry, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParHashTable.EntryIterator $outer;

    public ParHashTable$EntryIterator$$anonfun$convertToArrayBuffer$1(ParHashTable<K, Entry>.EntryIterator<T, IterRepr> entryIterator) {
        Objects.requireNonNull(entryIterator);
        this.$outer = entryIterator;
    }

    public final Object apply(HashEntry hashEntry) {
        return this.$outer.entry2item(hashEntry);
    }
}
