package kotlinx.coroutines.channels;

import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "cause", "", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumesAll$1.class */
final class ChannelsKt__Channels_commonKt$consumesAll$1 extends Lambda implements Function1<Throwable, Unit> {

    /* renamed from: f */
    final /* synthetic */ ReceiveChannel[] f21459f;

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.f20447a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        Throwable th2 = null;
        for (ReceiveChannel receiveChannel : this.f21459f) {
            try {
                ChannelsKt.m954j(receiveChannel, th);
            } catch (Throwable th3) {
                if (th2 == null) {
                    th2 = th3;
                } else {
                    ExceptionsKt__ExceptionsKt.m2491a(th2, th3);
                }
            }
        }
        if (th2 != null) {
            throw th2;
        }
    }
}
