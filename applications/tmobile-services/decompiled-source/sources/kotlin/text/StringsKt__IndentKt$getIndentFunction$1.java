package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "line", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt__IndentKt$getIndentFunction$1.class */
public final class StringsKt__IndentKt$getIndentFunction$1 extends Lambda implements Function1<String, String> {

    /* renamed from: f */
    public static final StringsKt__IndentKt$getIndentFunction$1 f21047f = new StringsKt__IndentKt$getIndentFunction$1();

    StringsKt__IndentKt$getIndentFunction$1() {
        super(1);
    }

    @NotNull
    /* renamed from: b */
    public final String m1500b(@NotNull String line) {
        Intrinsics.m1830e(line, "line");
        return line;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ String invoke(String str) {
        String str2 = str;
        m1500b(str2);
        return str2;
    }
}
