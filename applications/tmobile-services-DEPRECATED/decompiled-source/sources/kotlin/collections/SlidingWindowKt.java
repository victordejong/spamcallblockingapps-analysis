package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010(\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001f\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H��¢\u0006\u0004\b\u0004\u0010\u0005\u001aO\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\f0\u0007\"\u0004\b��\u0010\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u00072\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH��¢\u0006\u0004\b\r\u0010\u000e\u001aK\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\f0\u000f\"\u0004\b��\u0010\u0006*\b\u0012\u0004\u0012\u00028��0\u000f2\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH��¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"", "size", "step", "", "checkWindowSizeStep", "(II)V", "T", "", "iterator", "", "partialWindows", "reuseBuffer", "", "windowedIterator", "(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;", "Lkotlin/sequences/Sequence;", "windowedSequence", "(Lkotlin/sequences/Sequence;IIZZ)Lkotlin/sequences/Sequence;", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/SlidingWindowKt.class */
public final class SlidingWindowKt {
    @NotNull
    /* renamed from: a */
    public static final <T> Iterator<List<T>> m2057a(@NotNull Iterator<? extends T> iterator, int i, int i2, boolean z, boolean z2) {
        Iterator<List<T>> a;
        Intrinsics.m1830e(iterator, "iterator");
        if (!iterator.hasNext()) {
            return EmptyIterator.f20519f;
        }
        a = SequencesKt__SequenceBuilderKt.m1632a(new SlidingWindowKt$windowedIterator$1(i, i2, iterator, z2, z, null));
        return a;
    }
}
