package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005¸\u0006��"}, d2 = {"kotlin/sequences/SequencesKt__SequencesKt$Sequence$1", "Lkotlin/sequences/Sequence;", "", "iterator", "()Ljava/util/Iterator;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/SlidingWindowKt$windowedSequence$$inlined$Sequence$1.class */
public final class SlidingWindowKt$windowedSequence$$inlined$Sequence$1 implements Sequence<List<? extends T>> {

    /* renamed from: a */
    final /* synthetic */ Sequence f20544a;

    /* renamed from: b */
    final /* synthetic */ int f20545b;

    /* renamed from: c */
    final /* synthetic */ int f20546c;

    /* renamed from: d */
    final /* synthetic */ boolean f20547d;

    /* renamed from: e */
    final /* synthetic */ boolean f20548e;

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<List<? extends T>> iterator() {
        return SlidingWindowKt.m2057a(this.f20544a.iterator(), this.f20545b, this.f20546c, this.f20547d, this.f20548e);
    }
}
