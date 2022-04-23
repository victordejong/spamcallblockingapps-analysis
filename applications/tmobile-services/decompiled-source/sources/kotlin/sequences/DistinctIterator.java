package kotlin.sequences;

import java.util.HashSet;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.AbstractIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0005\b\u0002\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B)\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u000e\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR&\u0010\f\u001a\u0012\u0012\u0004\u0012\u00028\u00010\nj\b\u0012\u0004\u0012\u00028\u0001`\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lkotlin/sequences/DistinctIterator;", "T", "K", "Lkotlin/collections/AbstractIterator;", "", "computeNext", "()V", "Lkotlin/Function1;", "keySelector", "Lkotlin/Function1;", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "observed", "Ljava/util/HashSet;", "", "source", "Ljava/util/Iterator;", "<init>", "(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/DistinctIterator.class */
final class DistinctIterator<T, K> extends AbstractIterator<T> {

    /* renamed from: h */
    private final HashSet<K> f20843h = new HashSet<>();

    /* renamed from: i */
    private final Iterator<T> f20844i;

    /* renamed from: j */
    private final Function1<T, K> f20845j;

    /* JADX WARN: Multi-variable type inference failed */
    public DistinctIterator(@NotNull Iterator<? extends T> source, @NotNull Function1<? super T, ? extends K> keySelector) {
        Intrinsics.m1830e(source, "source");
        Intrinsics.m1830e(keySelector, "keySelector");
        this.f20844i = source;
        this.f20845j = keySelector;
    }

    @Override // kotlin.collections.AbstractIterator
    /* renamed from: a */
    protected void mo1672a() {
        while (this.f20844i.hasNext()) {
            T next = this.f20844i.next();
            if (this.f20843h.add(this.f20845j.invoke(next))) {
                m2375c(next);
                return;
            }
        }
        m2376b();
    }
}
