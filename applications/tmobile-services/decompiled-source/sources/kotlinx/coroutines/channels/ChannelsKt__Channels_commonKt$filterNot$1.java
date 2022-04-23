package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "E", "it", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$filterNot$1", m1914f = "Channels.common.kt", m1913l = {837}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNot$1.class */
final class ChannelsKt__Channels_commonKt$filterNot$1 extends SuspendLambda implements Function2<E, Continuation<? super Boolean>, Object> {

    /* renamed from: g */
    private Object f21578g;

    /* renamed from: h */
    Object f21579h;

    /* renamed from: i */
    int f21580i;

    /* renamed from: j */
    final /* synthetic */ Function2 f21581j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelsKt__Channels_commonKt$filterNot$1(Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f21581j = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__Channels_commonKt$filterNot$1 channelsKt__Channels_commonKt$filterNot$1 = new ChannelsKt__Channels_commonKt$filterNot$1(this.f21581j, continuation);
        channelsKt__Channels_commonKt$filterNot$1.f21578g = obj;
        return channelsKt__Channels_commonKt$filterNot$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f21580i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            Object obj2 = this.f21578g;
            Function2 function2 = this.f21581j;
            this.f21579h = obj2;
            this.f21580i = 1;
            Object o = function2.mo422o(obj2, this);
            obj = o;
            if (o == d) {
                return d;
            }
        } else if (i == 1) {
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Boxing.m1919a(!((Boolean) obj).booleanValue());
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Boolean> continuation) {
        return ((ChannelsKt__Channels_commonKt$filterNot$1) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
