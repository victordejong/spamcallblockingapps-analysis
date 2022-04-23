package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u0005*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u0010\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b8\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"kotlin/sequences/TransformingSequence$iterator$1", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "", "iterator", "Ljava/util/Iterator;", "getIterator", "()Ljava/util/Iterator;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/TransformingSequence$iterator$1.class */
public final class TransformingSequence$iterator$1 implements Iterator<R>, KMappedMarker {
    @NotNull

    /* renamed from: f */
    private final Iterator<T> f21009f;

    /* renamed from: g */
    final /* synthetic */ TransformingSequence f21010g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransformingSequence$iterator$1(TransformingSequence transformingSequence) {
        Sequence sequence;
        this.f21010g = transformingSequence;
        sequence = transformingSequence.f21007a;
        this.f21009f = sequence.iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f21009f.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [R, java.lang.Object] */
    @Override // java.util.Iterator
    public R next() {
        Function1 function1;
        function1 = this.f21010g.f21008b;
        return function1.invoke(this.f21009f.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
