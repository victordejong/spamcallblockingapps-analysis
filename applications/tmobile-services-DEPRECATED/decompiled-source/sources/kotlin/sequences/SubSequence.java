package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u000e\b��\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003B%\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\bH\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028��0\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\u0007R\u0016\u0010\u000e\u001a\u00020\u00048B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0010¨\u0006\u0016"}, d2 = {"Lkotlin/sequences/SubSequence;", "T", "Lkotlin/sequences/Sequence;", "Lkotlin/sequences/DropTakeSequence;", "", "n", "drop", "(I)Lkotlin/sequences/Sequence;", "", "iterator", "()Ljava/util/Iterator;", "take", "getCount", "()I", "count", "endIndex", "I", "sequence", "Lkotlin/sequences/Sequence;", "startIndex", "<init>", "(Lkotlin/sequences/Sequence;II)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SubSequence.class */
public final class SubSequence<T> implements Sequence<T>, DropTakeSequence<T> {

    /* renamed from: a */
    private final Sequence<T> f20986a;

    /* renamed from: b */
    private final int f20987b;

    /* renamed from: c */
    private final int f20988c;

    /* JADX WARN: Multi-variable type inference failed */
    public SubSequence(@NotNull Sequence<? extends T> sequence, int i, int i2) {
        Intrinsics.m1830e(sequence, "sequence");
        this.f20986a = sequence;
        this.f20987b = i;
        this.f20988c = i2;
        boolean z = true;
        if (i >= 0) {
            if (this.f20988c >= 0) {
                if (this.f20988c < this.f20987b) {
                    z = false;
                }
                if (!z) {
                    throw new IllegalArgumentException(("endIndex should be not less than startIndex, but was " + this.f20988c + " < " + this.f20987b).toString());
                }
                return;
            }
            throw new IllegalArgumentException(("endIndex should be non-negative, but is " + this.f20988c).toString());
        }
        throw new IllegalArgumentException(("startIndex should be non-negative, but is " + this.f20987b).toString());
    }

    /* renamed from: e */
    private final int m1591e() {
        return this.f20988c - this.f20987b;
    }

    @Override // kotlin.sequences.DropTakeSequence
    @NotNull
    /* renamed from: a */
    public Sequence<T> mo1589a(int i) {
        return i >= m1591e() ? SequencesKt__SequencesKt.m1629d() : new SubSequence<>(this.f20986a, this.f20987b + i, this.f20988c);
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        return new SubSequence$iterator$1(this);
    }
}
