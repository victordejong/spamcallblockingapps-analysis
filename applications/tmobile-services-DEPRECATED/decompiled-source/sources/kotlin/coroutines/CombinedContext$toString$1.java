package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "acc", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CombinedContext$toString$1.class */
final class CombinedContext$toString$1 extends Lambda implements Function2<String, CoroutineContext.Element, String> {

    /* renamed from: f */
    public static final CombinedContext$toString$1 f20637f = new CombinedContext$toString$1();

    CombinedContext$toString$1() {
        super(2);
    }

    @NotNull
    /* renamed from: b */
    public final String mo422o(@NotNull String acc, @NotNull CoroutineContext.Element element) {
        String str;
        Intrinsics.m1830e(acc, "acc");
        Intrinsics.m1830e(element, "element");
        if (acc.length() == 0) {
            str = element.toString();
        } else {
            str = acc + ", " + element;
        }
        return str;
    }
}
