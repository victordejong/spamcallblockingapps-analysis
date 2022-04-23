package kotlin.sequences;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��-\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010(\n\u0002\b\u0005*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u0010\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"kotlin/sequences/IndexingSequence$iterator$1", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "hasNext", "()Z", "Lkotlin/collections/IndexedValue;", "next", "()Lkotlin/collections/IndexedValue;", "", FirebaseAnalytics.Param.INDEX, "I", "getIndex", "()I", "setIndex", "(I)V", "", "iterator", "Ljava/util/Iterator;", "getIterator", "()Ljava/util/Iterator;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/IndexingSequence$iterator$1.class */
public final class IndexingSequence$iterator$1 implements Iterator<IndexedValue<? extends T>>, KMappedMarker {
    @NotNull

    /* renamed from: f */
    private final Iterator<T> f20878f;

    /* renamed from: g */
    private int f20879g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IndexingSequence$iterator$1(IndexingSequence indexingSequence) {
        Sequence sequence;
        sequence = indexingSequence.f20877a;
        this.f20878f = sequence.iterator();
    }

    @NotNull
    /* renamed from: a */
    public IndexedValue<T> next() {
        int i = this.f20879g;
        this.f20879g = i + 1;
        if (i >= 0) {
            return new IndexedValue<>(i, this.f20878f.next());
        }
        CollectionsKt.m2188o();
        throw null;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f20878f.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
