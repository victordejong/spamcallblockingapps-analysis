package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "T", "count", "<anonymous parameter 1>", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/SafeCollector$collectContextSize$1.class */
final class SafeCollector$collectContextSize$1 extends Lambda implements Function2<Integer, CoroutineContext.Element, Integer> {

    /* renamed from: f */
    public static final SafeCollector$collectContextSize$1 f23871f = new SafeCollector$collectContextSize$1();

    SafeCollector$collectContextSize$1() {
        super(2);
    }

    /* renamed from: b */
    public final int m596b(int i, @NotNull CoroutineContext.Element element) {
        return i + 1;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public /* bridge */ /* synthetic */ Integer mo422o(Integer num, CoroutineContext.Element element) {
        return Integer.valueOf(m596b(num.intValue(), element));
    }
}
