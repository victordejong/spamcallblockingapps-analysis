package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002 ��H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "R", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$onTimeout$1.class */
final class UnbiasedSelectBuilderImpl$onTimeout$1 extends Lambda implements Function0<Unit> {

    /* renamed from: f */
    final /* synthetic */ UnbiasedSelectBuilderImpl f24047f;

    /* renamed from: g */
    final /* synthetic */ long f24048g;

    /* renamed from: h */
    final /* synthetic */ Function1 f24049h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnbiasedSelectBuilderImpl$onTimeout$1(UnbiasedSelectBuilderImpl unbiasedSelectBuilderImpl, long j, Function1 function1) {
        super(0);
        this.f24047f = unbiasedSelectBuilderImpl;
        this.f24048g = j;
        this.f24049h = function1;
    }

    /* renamed from: b */
    public final void m297b() {
        this.f24047f.m302a().mo301m(this.f24048g, this.f24049h);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        m297b();
        return Unit.f20447a;
    }
}
