package kotlinx.coroutines.channels;

import kotlin.Metadata;
import p626l.C14874a;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, m815d2 = {"<anonymous>", "", "cause", "", "invoke"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumesAll$1.class */
public final class ChannelsKt__Channels_commonKt$consumesAll$1 extends AbstractC15150l implements AbstractC15118l<Throwable, C14989s> {
    public final /* synthetic */ ReceiveChannel[] $channels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelsKt__Channels_commonKt$consumesAll$1(ReceiveChannel[] receiveChannelArr) {
        super(1);
        this.$channels = receiveChannelArr;
    }

    @Override // p626l.p641z.p642c.AbstractC15118l
    public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
        invoke2(th);
        return C14989s.f33022a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        Throwable th2 = null;
        for (ReceiveChannel receiveChannel : this.$channels) {
            try {
                ChannelsKt.cancelConsumed(receiveChannel, th);
            } catch (Throwable th3) {
                if (th2 == null) {
                    th2 = th3;
                } else {
                    C14874a.m808a(th2, th3);
                }
            }
        }
        if (th2 != null) {
            throw th2;
        }
    }
}
