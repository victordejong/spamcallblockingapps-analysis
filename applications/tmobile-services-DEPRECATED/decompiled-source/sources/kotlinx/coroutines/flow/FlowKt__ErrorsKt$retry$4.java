package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "it", "", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$4.class */
final class FlowKt__ErrorsKt$retry$4 extends Lambda implements Function1<Throwable, Boolean> {
    static {
        new FlowKt__ErrorsKt$retry$4();
    }

    FlowKt__ErrorsKt$retry$4() {
        super(1);
    }

    /* renamed from: b */
    public final boolean m704b(@NotNull Throwable th) {
        return true;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Boolean invoke(Throwable th) {
        m704b(th);
        return Boolean.TRUE;
    }
}
