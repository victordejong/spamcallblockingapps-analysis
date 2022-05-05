package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u001f\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00028��0\u0002j\b\u0012\u0004\u0012\u00028��`\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00028��2\u0006\u0010\u0004\u001a\u00028��H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\t\u001a\u0012\u0012\u0004\u0012\u00028��0\u0002j\b\u0012\u0004\u0012\u00028��`\b¢\u0006\u0004\b\t\u0010\nR)\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00028��0\u0002j\b\u0012\u0004\u0012\u00028��`\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\n¨\u0006\u0010"}, d2 = {"Lkotlin/comparisons/ReversedComparator;", "T", "Ljava/util/Comparator;", "a", "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "Lkotlin/Comparator;", "reversed", "()Ljava/util/Comparator;", "comparator", "Ljava/util/Comparator;", "getComparator", "<init>", "(Ljava/util/Comparator;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/comparisons/ReversedComparator.class */
final class ReversedComparator<T> implements Comparator<T> {
    @NotNull

    /* renamed from: f */
    private final Comparator<T> f20629f;

    @Override // java.util.Comparator
    public int compare(T t, T t2) {
        return this.f20629f.compare(t2, t);
    }

    @Override // java.util.Comparator
    @NotNull
    public final Comparator<T> reversed() {
        return this.f20629f;
    }
}
