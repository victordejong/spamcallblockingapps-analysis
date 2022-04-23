package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
@AbstractC15070f(m473c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapIndexed$1", m472f = "Channels.common.kt", m471l = {1423, 1424, 1424}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, m815d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/ProducerScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1.class */
public final class ChannelsKt__Channels_commonKt$mapIndexed$1 extends AbstractC15078m implements AbstractC15122p<ProducerScope<? super R>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ ReceiveChannel $this_mapIndexed;
    public final /* synthetic */ AbstractC15123q $transform;
    public int I$0;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;

    /* renamed from: p$ */
    public ProducerScope f32856p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelsKt__Channels_commonKt$mapIndexed$1(ReceiveChannel receiveChannel, AbstractC15123q qVar, AbstractC15044d dVar) {
        super(2, dVar);
        this.$this_mapIndexed = receiveChannel;
        this.$transform = qVar;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        ChannelsKt__Channels_commonKt$mapIndexed$1 channelsKt__Channels_commonKt$mapIndexed$1 = new ChannelsKt__Channels_commonKt$mapIndexed$1(this.$this_mapIndexed, this.$transform, dVar);
        channelsKt__Channels_commonKt$mapIndexed$1.f32856p$ = (ProducerScope) obj;
        return channelsKt__Channels_commonKt$mapIndexed$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((ChannelsKt__Channels_commonKt$mapIndexed$1) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01c4  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x01af -> B:16:0x00cf). Please submit an issue!!! */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapIndexed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
