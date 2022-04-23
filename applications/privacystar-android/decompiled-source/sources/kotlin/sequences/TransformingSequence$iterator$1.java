package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0015\n��\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\t\u0010\u0005\u001a\u00020\u0006H\u0096\u0002J\u000e\u0010\u0007\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\bR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001¢\u0006\b\n��\u001a\u0004\b\u0003\u0010\u0004¨\u0006\t"}, m254d2 = {"kotlin/sequences/TransformingSequence$iterator$1", "", "iterator", "getIterator", "()Ljava/util/Iterator;", "hasNext", "", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/TransformingSequence$iterator$1.class */
public final class TransformingSequence$iterator$1 implements Iterator<R>, KMappedMarker {
    @NotNull
    private final Iterator<T> iterator;
    final /* synthetic */ TransformingSequence this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransformingSequence$iterator$1(TransformingSequence transformingSequence) {
        Sequence sequence;
        this.this$0 = transformingSequence;
        sequence = transformingSequence.sequence;
        this.iterator = sequence.iterator();
    }

    @NotNull
    public final Iterator<T> getIterator() {
        return this.iterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.iterator.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [R, java.lang.Object] */
    @Override // java.util.Iterator
    public R next() {
        Function1 function1;
        function1 = this.this$0.transformer;
        return function1.invoke(this.iterator.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
