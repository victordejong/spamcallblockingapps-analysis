package kotlin.p024io;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m400d2 = {"<anonymous>", "", "it", "", "invoke"}, m399k = 3, m398mv = {1, 4, 0})
/* renamed from: kotlin.io.TextStreamsKt$readLines$1 */
/* loaded from: classes-dex2jar.jar:kotlin/io/TextStreamsKt$readLines$1.class */
final class TextStreamsKt$readLines$1 extends Lambda implements Function1<String, Unit> {
    final /* synthetic */ ArrayList $result;

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

    /* renamed from: invoke */
    public final void invoke2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.$result.add(it);
    }
}
