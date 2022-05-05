package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0010��\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\tH\u0082@"}, d2 = {"fixedPeriodTicker", "", "delayMillis", "", "initialDelayMillis", "channel", "Lkotlinx/coroutines/channels/SendChannel;", "", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.TickerChannelsKt", m1914f = "TickerChannels.kt", m1913l = {84, 88, 94, 96}, m1912m = "fixedPeriodTicker")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1.class */
public final class TickerChannelsKt$fixedPeriodTicker$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22218f;

    /* renamed from: g */
    int f22219g;

    /* renamed from: h */
    long f22220h;

    /* renamed from: i */
    long f22221i;

    /* renamed from: j */
    long f22222j;

    /* renamed from: k */
    long f22223k;

    /* renamed from: l */
    long f22224l;

    /* renamed from: m */
    long f22225m;

    /* renamed from: n */
    long f22226n;

    /* renamed from: o */
    Object f22227o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TickerChannelsKt$fixedPeriodTicker$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22218f = obj;
        this.f22219g |= Integer.MIN_VALUE;
        return TickerChannelsKt.m794b(0L, 0L, null, this);
    }
}
