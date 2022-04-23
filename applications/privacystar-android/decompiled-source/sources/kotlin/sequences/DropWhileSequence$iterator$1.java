package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��!\n��\n\u0002\u0010(\n��\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\b\u0010\u0011\u001a\u00020\u0012H\u0002J\t\u0010\u0013\u001a\u00020\u0014H\u0096\u0002J\u000e\u0010\u0015\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u0001¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u001e\u0010\u000b\u001a\u0004\u0018\u00018��X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0016"}, m254d2 = {"kotlin/sequences/DropWhileSequence$iterator$1", "", "dropState", "", "getDropState", "()I", "setDropState", "(I)V", "iterator", "getIterator", "()Ljava/util/Iterator;", "nextItem", "getNextItem", "()Ljava/lang/Object;", "setNextItem", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "drop", "", "hasNext", "", "next", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/DropWhileSequence$iterator$1.class */
public final class DropWhileSequence$iterator$1 implements Iterator<T>, KMappedMarker {
    private int dropState = -1;
    @NotNull
    private final Iterator<T> iterator;
    @Nullable
    private T nextItem;
    final /* synthetic */ DropWhileSequence this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DropWhileSequence$iterator$1(DropWhileSequence dropWhileSequence) {
        Sequence sequence;
        this.this$0 = dropWhileSequence;
        sequence = dropWhileSequence.sequence;
        this.iterator = sequence.iterator();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void drop() {
        /*
            r3 = this;
        L_0x0000:
            r0 = r3
            java.util.Iterator<T> r0 = r0.iterator
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0037
            r0 = r3
            java.util.Iterator<T> r0 = r0.iterator
            java.lang.Object r0 = r0.next()
            r4 = r0
            r0 = r3
            kotlin.sequences.DropWhileSequence r0 = r0.this$0
            kotlin.jvm.functions.Function1 r0 = kotlin.sequences.DropWhileSequence.access$getPredicate$p(r0)
            r1 = r4
            java.lang.Object r0 = r0.invoke(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L_0x0000
            r0 = r3
            r1 = r4
            r0.nextItem = r1
            r0 = r3
            r1 = 1
            r0.dropState = r1
            return
        L_0x0037:
            r0 = r3
            r1 = 0
            r0.dropState = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.DropWhileSequence$iterator$1.drop():void");
    }

    public final int getDropState() {
        return this.dropState;
    }

    @NotNull
    public final Iterator<T> getIterator() {
        return this.iterator;
    }

    @Nullable
    public final T getNextItem() {
        return this.nextItem;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.dropState == -1) {
            drop();
        }
        boolean z = true;
        if (this.dropState != 1) {
            z = this.iterator.hasNext();
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public T next() {
        if (this.dropState == -1) {
            drop();
        }
        if (this.dropState != 1) {
            return this.iterator.next();
        }
        T t = this.nextItem;
        this.nextItem = null;
        this.dropState = 0;
        return t;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setDropState(int i) {
        this.dropState = i;
    }

    public final void setNextItem(@Nullable T t) {
        this.nextItem = t;
    }
}
