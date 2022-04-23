package retrofit2;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n¢\u0006\u0002\b\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "", "T", "", "it", "", "invoke", "retrofit2/KotlinExtensions$await$4$1"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: retrofit2.KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2 */
/* loaded from: classes2-dex2jar.jar:retrofit2/KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2.class */
final class C2460x19835f11 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ Call $this_await$inlined;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2460x19835f11(Call call) {
        super(1);
        this.$this_await$inlined = call;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.f20447a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        this.$this_await$inlined.cancel();
    }
}
