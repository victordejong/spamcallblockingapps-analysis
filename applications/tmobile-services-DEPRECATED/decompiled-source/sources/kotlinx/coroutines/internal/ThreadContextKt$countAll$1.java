package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.ThreadContextElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<no name provided>", "", "countOrElement", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/ThreadContextKt$countAll$1.class */
final class ThreadContextKt$countAll$1 extends Lambda implements Function2<Object, CoroutineContext.Element, Object> {

    /* renamed from: f */
    public static final ThreadContextKt$countAll$1 f23957f = new ThreadContextKt$countAll$1();

    ThreadContextKt$countAll$1() {
        super(2);
    }

    @Nullable
    /* renamed from: b */
    public final Object mo422o(@Nullable Object obj, @NotNull CoroutineContext.Element element) {
        if (!(element instanceof ThreadContextElement)) {
            return obj;
        }
        Object obj2 = obj;
        if (!(obj instanceof Integer)) {
            obj2 = null;
        }
        Integer num = (Integer) obj2;
        int intValue = num != null ? num.intValue() : 1;
        Object obj3 = element;
        if (intValue != 0) {
            obj3 = Integer.valueOf(intValue + 1);
        }
        return obj3;
    }
}
