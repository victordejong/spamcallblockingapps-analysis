package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@"}, d2 = {"collect", "", "T", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.StateFlowImpl", m1914f = "StateFlow.kt", m1913l = {321, 279}, m1912m = "collect")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/StateFlowImpl$collect$1.class */
public final class StateFlowImpl$collect$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f23635f;

    /* renamed from: g */
    int f23636g;

    /* renamed from: h */
    final /* synthetic */ StateFlowImpl f23637h;

    /* renamed from: i */
    Object f23638i;

    /* renamed from: j */
    Object f23639j;

    /* renamed from: k */
    Object f23640k;

    /* renamed from: l */
    Object f23641l;

    /* renamed from: m */
    Object f23642m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateFlowImpl$collect$1(StateFlowImpl stateFlowImpl, Continuation continuation) {
        super(continuation);
        this.f23637h = stateFlowImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f23635f = obj;
        this.f23636g |= Integer.MIN_VALUE;
        return this.f23637h.mo589a(null, this);
    }
}
