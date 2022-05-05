package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "it", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__IndentKt$prependIndent$1.class */
final class StringsKt__IndentKt$prependIndent$1 extends Lambda implements Function1<String, String> {

    /* renamed from: f */
    final /* synthetic */ String f21049f;

    @NotNull
    /* renamed from: b */
    public final String invoke(@NotNull String it) {
        boolean r;
        String str;
        Intrinsics.m1830e(it, "it");
        r = StringsKt__StringsJVMKt.m1485r(it);
        if (r) {
            str = it;
            if (it.length() < this.f21049f.length()) {
                str = this.f21049f;
            }
        } else {
            str = this.f21049f + it;
        }
        return str;
    }
}
