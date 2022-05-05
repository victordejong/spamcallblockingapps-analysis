package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\b\n\u0002\b\u0006\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T", "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/comparisons/ComparisonsKt__ComparisonsKt$then$1.class */
final class ComparisonsKt__ComparisonsKt$then$1<T> implements Comparator<T> {

    /* renamed from: f */
    final /* synthetic */ Comparator f20611f;

    /* renamed from: g */
    final /* synthetic */ Comparator f20612g;

    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        int compare = this.f20611f.compare(t, t2);
        if (compare == 0) {
            compare = this.f20612g.compare(t, t2);
        }
        return compare;
    }
}
