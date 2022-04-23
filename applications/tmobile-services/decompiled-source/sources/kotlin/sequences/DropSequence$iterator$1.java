package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��-\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\t\u0010\nR\u001f\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"kotlin/sequences/DropSequence$iterator$1", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "drop", "()V", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "", "iterator", "Ljava/util/Iterator;", "getIterator", "()Ljava/util/Iterator;", "", "left", "I", "getLeft", "()I", "setLeft", "(I)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/DropSequence$iterator$1.class */
public final class DropSequence$iterator$1 implements Iterator<T>, KMappedMarker {
    @NotNull

    /* renamed from: f */
    private final Iterator<T> f20850f;

    /* renamed from: g */
    private int f20851g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DropSequence$iterator$1(DropSequence dropSequence) {
        Sequence sequence;
        int i;
        sequence = dropSequence.f20848a;
        this.f20850f = sequence.iterator();
        i = dropSequence.f20849b;
        this.f20851g = i;
    }

    /* renamed from: a */
    private final void m1669a() {
        while (this.f20851g > 0 && this.f20850f.hasNext()) {
            this.f20850f.next();
            this.f20851g--;
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        m1669a();
        return this.f20850f.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public T next() {
        m1669a();
        return this.f20850f.next();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
