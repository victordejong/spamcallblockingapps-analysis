package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
@AbstractC15070f(m473c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$distinctBy$1", m472f = "Channels.common.kt", m471l = {1700, 1701, 1703}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, m815d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "K", "Lkotlinx/coroutines/channels/ProducerScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1.class */
public final class ChannelsKt__Channels_commonKt$distinctBy$1 extends AbstractC15078m implements AbstractC15122p<ProducerScope<? super E>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ AbstractC15122p $selector;
    public final /* synthetic */ ReceiveChannel $this_distinctBy;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public int label;

    /* renamed from: p$ */
    public ProducerScope f32848p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelsKt__Channels_commonKt$distinctBy$1(ReceiveChannel receiveChannel, AbstractC15122p pVar, AbstractC15044d dVar) {
        super(2, dVar);
        this.$this_distinctBy = receiveChannel;
        this.$selector = pVar;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        ChannelsKt__Channels_commonKt$distinctBy$1 channelsKt__Channels_commonKt$distinctBy$1 = new ChannelsKt__Channels_commonKt$distinctBy$1(this.$this_distinctBy, this.$selector, dVar);
        channelsKt__Channels_commonKt$distinctBy$1.f32848p$ = (ProducerScope) obj;
        return channelsKt__Channels_commonKt$distinctBy$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((ChannelsKt__Channels_commonKt$distinctBy$1) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01e5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x017e -> B:35:0x01d0). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x01b8 -> B:34:0x01be). Please submit an issue!!! */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$distinctBy$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
