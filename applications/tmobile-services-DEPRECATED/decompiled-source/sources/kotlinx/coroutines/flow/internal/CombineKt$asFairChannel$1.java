package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.internal.CombineKt$asFairChannel$1", m1914f = "Combine.kt", m1913l = {143}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$asFairChannel$1.class */
public final class CombineKt$asFairChannel$1 extends SuspendLambda implements Function2<ProducerScope<? super Object>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private ProducerScope f23813g;

    /* renamed from: h */
    Object f23814h;

    /* renamed from: i */
    Object f23815i;

    /* renamed from: j */
    Object f23816j;

    /* renamed from: k */
    int f23817k;

    /* renamed from: l */
    final /* synthetic */ Flow f23818l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$asFairChannel$1(Flow flow, Continuation continuation) {
        super(2, continuation);
        this.f23818l = flow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        CombineKt$asFairChannel$1 combineKt$asFairChannel$1 = new CombineKt$asFairChannel$1(this.f23818l, continuation);
        combineKt$asFairChannel$1.f23813g = (ProducerScope) obj;
        return combineKt$asFairChannel$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23817k;
        if (i == 0) {
            ResultKt.m2472b(obj);
            ProducerScope producerScope = this.f23813g;
            SendChannel n = producerScope.mo820n();
            if (n != null) {
                final ChannelCoroutine channelCoroutine = (ChannelCoroutine) n;
                Flow flow = this.f23818l;
                FlowCollector<Object> combineKt$asFairChannel$1$invokeSuspend$$inlined$collect$1 = new FlowCollector<Object>() { // from class: kotlinx.coroutines.flow.internal.CombineKt$asFairChannel$1$invokeSuspend$$inlined$collect$1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    @Nullable
                    /* renamed from: b */
                    public Object mo588b(Object obj2, @NotNull Continuation continuation) {
                        Object d2;
                        ChannelCoroutine channelCoroutine2 = ChannelCoroutine.this;
                        if (obj2 == null) {
                            obj2 = NullSurrogateKt.f23864a;
                        }
                        Object Z0 = channelCoroutine2.m1003Z0(obj2, continuation);
                        d2 = IntrinsicsKt__IntrinsicsKt.m1920d();
                        return Z0 == d2 ? Z0 : Unit.f20447a;
                    }
                };
                this.f23814h = producerScope;
                this.f23815i = channelCoroutine;
                this.f23816j = flow;
                this.f23817k = 1;
                if (flow.mo589a(combineKt$asFairChannel$1$invokeSuspend$$inlined$collect$1, this) == d) {
                    return d;
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelCoroutine<kotlin.Any>");
            }
        } else if (i == 1) {
            Flow flow2 = (Flow) this.f23816j;
            ChannelCoroutine channelCoroutine2 = (ChannelCoroutine) this.f23815i;
            ProducerScope producerScope2 = (ProducerScope) this.f23814h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(ProducerScope<? super Object> producerScope, Continuation<? super Unit> continuation) {
        return ((CombineKt$asFairChannel$1) create(producerScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
