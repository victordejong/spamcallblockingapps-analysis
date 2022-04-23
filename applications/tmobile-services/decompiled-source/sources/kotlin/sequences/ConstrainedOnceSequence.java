package kotlin.sequences;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0015\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005R0\u0010\b\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00028�� \u0007*\n\u0012\u0004\u0012\u00028��\u0018\u00010\u00020\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lkotlin/sequences/ConstrainedOnceSequence;", "T", "Lkotlin/sequences/Sequence;", "", "iterator", "()Ljava/util/Iterator;", "Ljava/util/concurrent/atomic/AtomicReference;", "kotlin.jvm.PlatformType", "sequenceRef", "Ljava/util/concurrent/atomic/AtomicReference;", "sequence", "<init>", "(Lkotlin/sequences/Sequence;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/ConstrainedOnceSequence.class */
public final class ConstrainedOnceSequence<T> implements Sequence<T> {

    /* renamed from: a */
    private final AtomicReference<Sequence<T>> f20842a;

    public ConstrainedOnceSequence(@NotNull Sequence<? extends T> sequence) {
        Intrinsics.m1830e(sequence, "sequence");
        this.f20842a = new AtomicReference<>(sequence);
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        Sequence<T> andSet = this.f20842a.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
