package kotlin.g;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n��\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002¢\u0006\u0002\u0010\u0004J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\tH\u0096\u0002R(\u0010\u0005\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00028�� \u0007*\n\u0012\u0004\u0012\u00028��\u0018\u00010\u00020\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lkotlin/sequences/ConstrainedOnceSequence;", "T", "Lkotlin/sequences/Sequence;", "sequence", "(Lkotlin/sequences/Sequence;)V", "sequenceRef", "Ljava/util/concurrent/atomic/AtomicReference;", "kotlin.jvm.PlatformType", "iterator", "", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/g/a.class */
public final class a<T> implements h<T> {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<h<T>> f36672a;

    public a(h<? extends T> sequence) {
        p.d(sequence, "sequence");
        this.f36672a = new AtomicReference<>(sequence);
    }

    @Override // kotlin.g.h
    public final Iterator<T> a() {
        h<T> andSet = this.f36672a.getAndSet(null);
        if (andSet != null) {
            return andSet.a();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
