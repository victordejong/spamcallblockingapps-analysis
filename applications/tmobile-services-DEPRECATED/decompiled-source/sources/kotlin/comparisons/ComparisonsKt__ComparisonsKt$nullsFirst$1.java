package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\b\n��\n\u0002\u0010��\n\u0002\b\u0004\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u0001H\u00022\b\u0010\u0005\u001a\u0004\u0018\u0001H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T", "", "a", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/comparisons/ComparisonsKt__ComparisonsKt$nullsFirst$1.class */
final class ComparisonsKt__ComparisonsKt$nullsFirst$1<T> implements Comparator<T> {

    /* renamed from: f */
    final /* synthetic */ Comparator f20609f;

    @Override // java.util.Comparator
    public final int compare(@Nullable T t, @Nullable T t2) {
        return t == t2 ? 0 : t == null ? -1 : t2 == null ? 1 : this.f20609f.compare(t, t2);
    }
}
