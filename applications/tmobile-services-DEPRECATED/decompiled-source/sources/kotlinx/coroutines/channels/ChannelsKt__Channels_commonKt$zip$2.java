package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "E", "R", "V", "Lkotlinx/coroutines/channels/ProducerScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$zip$2", m1914f = "Channels.common.kt", m1913l = {2201, 2191, 2193}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2.class */
final class ChannelsKt__Channels_commonKt$zip$2 extends SuspendLambda implements Function2<ProducerScope<? super V>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private ProducerScope f22171g;

    /* renamed from: h */
    Object f22172h;

    /* renamed from: i */
    Object f22173i;

    /* renamed from: j */
    Object f22174j;

    /* renamed from: k */
    Object f22175k;

    /* renamed from: l */
    Object f22176l;

    /* renamed from: m */
    Object f22177m;

    /* renamed from: n */
    Object f22178n;

    /* renamed from: o */
    Object f22179o;

    /* renamed from: p */
    Object f22180p;

    /* renamed from: q */
    Object f22181q;

    /* renamed from: r */
    Object f22182r;

    /* renamed from: s */
    int f22183s;

    /* renamed from: t */
    final /* synthetic */ ReceiveChannel f22184t;

    /* renamed from: u */
    final /* synthetic */ ReceiveChannel f22185u;

    /* renamed from: v */
    final /* synthetic */ Function2 f22186v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelsKt__Channels_commonKt$zip$2(ReceiveChannel receiveChannel, ReceiveChannel receiveChannel2, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f22184t = receiveChannel;
        this.f22185u = receiveChannel2;
        this.f22186v = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__Channels_commonKt$zip$2 channelsKt__Channels_commonKt$zip$2 = new ChannelsKt__Channels_commonKt$zip$2(this.f22184t, this.f22185u, this.f22186v, continuation);
        channelsKt__Channels_commonKt$zip$2.f22171g = (ProducerScope) obj;
        return channelsKt__Channels_commonKt$zip$2;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0306  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:123:0x03af -> B:124:0x03c3). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x02e5 -> B:26:0x01aa). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 1009
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$zip$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__Channels_commonKt$zip$2) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
