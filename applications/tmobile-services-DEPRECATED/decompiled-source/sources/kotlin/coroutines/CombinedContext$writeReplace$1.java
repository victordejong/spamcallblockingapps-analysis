package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke", "(Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext$Element;)V"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CombinedContext$writeReplace$1.class */
final class CombinedContext$writeReplace$1 extends Lambda implements Function2<Unit, CoroutineContext.Element, Unit> {

    /* renamed from: f */
    final /* synthetic */ CoroutineContext[] f20638f;

    /* renamed from: g */
    final /* synthetic */ Ref.IntRef f20639g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombinedContext$writeReplace$1(CoroutineContext[] coroutineContextArr, Ref.IntRef intRef) {
        super(2);
        this.f20638f = coroutineContextArr;
        this.f20639g = intRef;
    }

    /* renamed from: b */
    public final void m1938b(@NotNull Unit unit, @NotNull CoroutineContext.Element element) {
        Intrinsics.m1830e(unit, "<anonymous parameter 0>");
        Intrinsics.m1830e(element, "element");
        CoroutineContext[] coroutineContextArr = this.f20638f;
        Ref.IntRef intRef = this.f20639g;
        int i = intRef.f20749f;
        intRef.f20749f = i + 1;
        coroutineContextArr[i] = element;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public /* bridge */ /* synthetic */ Unit mo422o(Unit unit, CoroutineContext.Element element) {
        m1938b(unit, element);
        return Unit.f20447a;
    }
}
