package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "E", "K", "Lkotlinx/coroutines/channels/ProducerScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$distinctBy$1", m1914f = "Channels.common.kt", m1913l = {1700, 1701, 1703}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1.class */
final class ChannelsKt__Channels_commonKt$distinctBy$1 extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private ProducerScope f21481g;

    /* renamed from: h */
    Object f21482h;

    /* renamed from: i */
    Object f21483i;

    /* renamed from: j */
    Object f21484j;

    /* renamed from: k */
    Object f21485k;

    /* renamed from: l */
    Object f21486l;

    /* renamed from: m */
    int f21487m;

    /* renamed from: n */
    final /* synthetic */ ReceiveChannel f21488n;

    /* renamed from: o */
    final /* synthetic */ Function2 f21489o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelsKt__Channels_commonKt$distinctBy$1(ReceiveChannel receiveChannel, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f21488n = receiveChannel;
        this.f21489o = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__Channels_commonKt$distinctBy$1 channelsKt__Channels_commonKt$distinctBy$1 = new ChannelsKt__Channels_commonKt$distinctBy$1(this.f21488n, this.f21489o, continuation);
        channelsKt__Channels_commonKt$distinctBy$1.f21481g = (ProducerScope) obj;
        return channelsKt__Channels_commonKt$distinctBy$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0217  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x01c2 -> B:35:0x01d0). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x01f9 -> B:16:0x00d6). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$distinctBy$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__Channels_commonKt$distinctBy$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
