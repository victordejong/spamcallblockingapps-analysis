package scala.collection.parallel.mutable;

import scala.Serializable;
import scala.collection.mutable.HashEntry;
import scala.runtime.AbstractFunction1;
/* renamed from: scala.collection.parallel.mutable.ParHashTable$EntryIterator$$anonfun$debugInformation$1$$anonfun$apply$1 */
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1$$anonfun$apply$1.class */
public final class C2590x76e0a0b8 extends AbstractFunction1<HashEntry<K, Entry>, String> implements Serializable {
    public static final long serialVersionUID = 0;

    public C2590x76e0a0b8(ParHashTable<K, Entry>.ParHashTable$EntryIterator$$anonfun$debugInformation$1<T, IterRepr>.1 parHashTable$EntryIterator$$anonfun$debugInformation$1) {
    }

    public final String apply(HashEntry<K, Entry> hashEntry) {
        return hashEntry == 0 ? "n/a" : hashEntry.toString();
    }
}
