package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\b\n\u0002\b\u0007\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u000e\u0010\u0004\u001a\n \u0005*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0006\u001a\n \u0005*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"<anonymous>", "", "T", "K", "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$3.class */
public final class ComparisonsKt__ComparisonsKt$compareBy$3<T> implements Comparator<T> {

    /* renamed from: f */
    final /* synthetic */ Comparator f20604f;

    /* renamed from: g */
    final /* synthetic */ Function1 f20605g;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return this.f20604f.compare(this.f20605g.invoke(t), this.f20605g.invoke(t2));
    }
}
