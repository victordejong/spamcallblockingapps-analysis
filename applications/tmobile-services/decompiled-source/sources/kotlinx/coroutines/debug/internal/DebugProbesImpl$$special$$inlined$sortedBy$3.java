package kotlinx.coroutines.debug.internal;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\b\n\u0002\b\u0007\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/internal/DebugProbesImpl$$special$$inlined$sortedBy$3.class */
public final class DebugProbesImpl$$special$$inlined$sortedBy$3<T> implements Comparator<T> {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        int b;
        b = ComparisonsKt__ComparisonsKt.m1949b(Long.valueOf(((DebugProbesImpl.CoroutineOwner) t).f22281g.f22263d), Long.valueOf(((DebugProbesImpl.CoroutineOwner) t2).f22281g.f22263d));
        return b;
    }
}
