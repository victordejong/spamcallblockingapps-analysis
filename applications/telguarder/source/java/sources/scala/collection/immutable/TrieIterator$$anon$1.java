package scala.collection.immutable;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/TrieIterator$$anon$1.class */
public final class TrieIterator$$anon$1 extends TrieIterator<T> {
    private final /* synthetic */ TrieIterator $outer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TrieIterator$$anon$1(TrieIterator trieIterator, TrieIterator<T> trieIterator2) {
        super(trieIterator2);
        Objects.requireNonNull(trieIterator);
        this.$outer = trieIterator;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    @Override // scala.collection.immutable.TrieIterator
    public final T getElem(Object obj) {
        return this.$outer.getElem(obj);
    }
}
