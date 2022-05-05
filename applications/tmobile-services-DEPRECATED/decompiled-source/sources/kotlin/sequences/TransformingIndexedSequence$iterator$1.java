package kotlin.sequences;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010(\n\u0002\b\u0005*\u0001��\b\n\u0018��2\u00020\u00012\u00020\u0002J\u0010\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\u000f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"kotlin/sequences/TransformingIndexedSequence$iterator$1", "Ljava/util/Iterator;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "", FirebaseAnalytics.Param.INDEX, "I", "getIndex", "()I", "setIndex", "(I)V", "", "iterator", "Ljava/util/Iterator;", "getIterator", "()Ljava/util/Iterator;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/TransformingIndexedSequence$iterator$1.class */
public final class TransformingIndexedSequence$iterator$1 implements Iterator<R>, KMappedMarker {
    @NotNull

    /* renamed from: f */
    private final Iterator<T> f21004f;

    /* renamed from: g */
    private int f21005g;

    /* renamed from: h */
    final /* synthetic */ TransformingIndexedSequence f21006h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransformingIndexedSequence$iterator$1(TransformingIndexedSequence transformingIndexedSequence) {
        Sequence sequence;
        this.f21006h = transformingIndexedSequence;
        sequence = transformingIndexedSequence.f21002a;
        this.f21004f = sequence.iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f21004f.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [R, java.lang.Object] */
    @Override // java.util.Iterator
    public R next() {
        Function2 function2;
        function2 = this.f21006h.f21003b;
        int i = this.f21005g;
        this.f21005g = i + 1;
        if (i >= 0) {
            return function2.mo422o(Integer.valueOf(i), this.f21004f.next());
        }
        CollectionsKt.m2188o();
        throw null;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
