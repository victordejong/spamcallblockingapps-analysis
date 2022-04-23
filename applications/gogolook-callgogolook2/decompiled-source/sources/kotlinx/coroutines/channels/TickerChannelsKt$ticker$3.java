package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlinx.coroutines.channels.TickerChannelsKt;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
@AbstractC15070f(m473c = "kotlinx.coroutines.channels.TickerChannelsKt$ticker$3", m472f = "TickerChannels.kt", m471l = {72, 73}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/TickerChannelsKt$ticker$3.class */
public final class TickerChannelsKt$ticker$3 extends AbstractC15078m implements AbstractC15122p<ProducerScope<? super C14989s>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ long $delayMillis;
    public final /* synthetic */ long $initialDelayMillis;
    public final /* synthetic */ TickerMode $mode;
    public Object L$0;
    public int label;

    /* renamed from: p$ */
    public ProducerScope f32862p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TickerChannelsKt$ticker$3(TickerMode tickerMode, long j, long j2, AbstractC15044d dVar) {
        super(2, dVar);
        this.$mode = tickerMode;
        this.$delayMillis = j;
        this.$initialDelayMillis = j2;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        TickerChannelsKt$ticker$3 tickerChannelsKt$ticker$3 = new TickerChannelsKt$ticker$3(this.$mode, this.$delayMillis, this.$initialDelayMillis, dVar);
        tickerChannelsKt$ticker$3.f32862p$ = (ProducerScope) obj;
        return tickerChannelsKt$ticker$3;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(ProducerScope<? super C14989s> producerScope, AbstractC15044d<? super C14989s> dVar) {
        return ((TickerChannelsKt$ticker$3) create(producerScope, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            ProducerScope producerScope = this.f32862p$;
            int i2 = TickerChannelsKt.WhenMappings.$EnumSwitchMapping$0[this.$mode.ordinal()];
            if (i2 == 1) {
                long j = this.$delayMillis;
                long j2 = this.$initialDelayMillis;
                SendChannel channel = producerScope.getChannel();
                this.L$0 = producerScope;
                this.label = 1;
                if (TickerChannelsKt.fixedPeriodTicker(j, j2, channel, this) == a) {
                    return a;
                }
            } else if (i2 == 2) {
                long j3 = this.$delayMillis;
                long j4 = this.$initialDelayMillis;
                SendChannel channel2 = producerScope.getChannel();
                this.L$0 = producerScope;
                this.label = 2;
                if (TickerChannelsKt.fixedDelayTicker(j3, j4, channel2, this) == a) {
                    return a;
                }
            }
        } else if (i == 1 || i == 2) {
            ProducerScope producerScope2 = (ProducerScope) this.L$0;
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return C14989s.f33022a;
    }
}
