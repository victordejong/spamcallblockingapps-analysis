package kotlin.p013io;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m254d2 = {"<anonymous>", "", "it", "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: kotlin.io.TextStreamsKt$readLines$1 */
/* loaded from: classes2-dex2jar.jar:kotlin/io/TextStreamsKt$readLines$1.class */
final class TextStreamsKt$readLines$1 extends Lambda implements Function1<String, Unit> {
    final /* synthetic */ ArrayList $result;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextStreamsKt$readLines$1(ArrayList arrayList) {
        super(1);
        this.$result = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(String str) {
        invoke2(str);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull String it) {
        Intrinsics.checkParameterIsNotNull(it, "it");
        this.$result.add(it);
    }
}
