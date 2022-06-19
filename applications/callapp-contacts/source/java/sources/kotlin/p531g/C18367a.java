package kotlin.p531g;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n��\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002¢\u0006\u0002\u0010\u0004J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\tH\u0096\u0002R(\u0010\u0005\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00028�� \u0007*\n\u0012\u0004\u0012\u00028��\u0018\u00010\u00020\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, m4298d2 = {"Lkotlin/sequences/ConstrainedOnceSequence;", "T", "Lkotlin/sequences/Sequence;", "sequence", "(Lkotlin/sequences/Sequence;)V", "sequenceRef", "Ljava/util/concurrent/atomic/AtomicReference;", "kotlin.jvm.PlatformType", "iterator", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.g.a */
/* loaded from: classes5-dex2jar.jar:kotlin/g/a.class */
public final class C18367a<T> implements AbstractC18378h<T> {

    /* renamed from: a */
    private final AtomicReference<AbstractC18378h<T>> f63469a;

    public C18367a(AbstractC18378h<? extends T> sequence) {
        C18524p.m3840d(sequence, "sequence");
        this.f63469a = new AtomicReference<>(sequence);
    }

    @Override // kotlin.p531g.AbstractC18378h
    /* renamed from: a */
    public final Iterator<T> mo3908a() {
        AbstractC18378h<T> andSet = this.f63469a.getAndSet(null);
        if (andSet != null) {
            return andSet.mo3908a();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
