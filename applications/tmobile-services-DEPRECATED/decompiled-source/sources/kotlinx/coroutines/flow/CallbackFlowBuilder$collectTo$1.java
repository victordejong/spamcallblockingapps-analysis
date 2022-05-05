package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0094@"}, d2 = {"collectTo", "", "T", "scope", "Lkotlinx/coroutines/channels/ProducerScope;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.CallbackFlowBuilder", m1914f = "Builders.kt", m1913l = {341}, m1912m = "collectTo")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/CallbackFlowBuilder$collectTo$1.class */
public final class CallbackFlowBuilder$collectTo$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22294f;

    /* renamed from: g */
    int f22295g;

    /* renamed from: h */
    final /* synthetic */ CallbackFlowBuilder f22296h;

    /* renamed from: i */
    Object f22297i;

    /* renamed from: j */
    Object f22298j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallbackFlowBuilder$collectTo$1(CallbackFlowBuilder callbackFlowBuilder, Continuation continuation) {
        super(continuation);
        this.f22296h = callbackFlowBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22294f = obj;
        this.f22295g |= Integer.MIN_VALUE;
        return this.f22296h.mo615e(null, this);
    }
}
