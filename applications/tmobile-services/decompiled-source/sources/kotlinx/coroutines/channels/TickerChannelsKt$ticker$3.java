package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.TickerChannelsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.TickerChannelsKt$ticker$3", m1914f = "TickerChannels.kt", m1913l = {72, 73}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/TickerChannelsKt$ticker$3.class */
final class TickerChannelsKt$ticker$3 extends SuspendLambda implements Function2<ProducerScope<? super Unit>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private ProducerScope f22228g;

    /* renamed from: h */
    Object f22229h;

    /* renamed from: i */
    int f22230i;

    /* renamed from: j */
    final /* synthetic */ TickerMode f22231j;

    /* renamed from: k */
    final /* synthetic */ long f22232k;

    /* renamed from: l */
    final /* synthetic */ long f22233l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TickerChannelsKt$ticker$3(TickerMode tickerMode, long j, long j2, Continuation continuation) {
        super(2, continuation);
        this.f22231j = tickerMode;
        this.f22232k = j;
        this.f22233l = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        TickerChannelsKt$ticker$3 tickerChannelsKt$ticker$3 = new TickerChannelsKt$ticker$3(this.f22231j, this.f22232k, this.f22233l, continuation);
        tickerChannelsKt$ticker$3.f22228g = (ProducerScope) obj;
        return tickerChannelsKt$ticker$3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f22230i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            ProducerScope producerScope = this.f22228g;
            int i2 = TickerChannelsKt.WhenMappings.f22212a[this.f22231j.ordinal()];
            if (i2 == 1) {
                long j = this.f22232k;
                long j2 = this.f22233l;
                SendChannel n = producerScope.mo820n();
                this.f22229h = producerScope;
                this.f22230i = 1;
                if (TickerChannelsKt.m794b(j, j2, n, this) == d) {
                    return d;
                }
            } else if (i2 == 2) {
                long j3 = this.f22232k;
                long j4 = this.f22233l;
                SendChannel n2 = producerScope.mo820n();
                this.f22229h = producerScope;
                this.f22230i = 2;
                if (TickerChannelsKt.m795a(j3, j4, n2, this) == d) {
                    return d;
                }
            }
        } else if (i == 1 || i == 2) {
            ProducerScope producerScope2 = (ProducerScope) this.f22229h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(ProducerScope<? super Unit> producerScope, Continuation<? super Unit> continuation) {
        return ((TickerChannelsKt$ticker$3) create(producerScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
