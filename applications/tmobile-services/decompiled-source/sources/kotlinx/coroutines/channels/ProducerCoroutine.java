package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.channels.SendChannel;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003B\u001d\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0014¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u00068V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0016"}, d2 = {"Lkotlinx/coroutines/channels/ProducerCoroutine;", "E", "Lkotlinx/coroutines/channels/ProducerScope;", "Lkotlinx/coroutines/channels/ChannelCoroutine;", "", "cause", "", "handled", "", "onCancelled", "(Ljava/lang/Throwable;Z)V", FirebaseAnalytics.Param.VALUE, "onCompleted", "(Lkotlin/Unit;)V", "isActive", "()Z", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "Lkotlinx/coroutines/channels/Channel;", "channel", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/Channel;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ProducerCoroutine.class */
public class ProducerCoroutine<E> extends ChannelCoroutine<E> implements ProducerScope<E> {
    public ProducerCoroutine(@NotNull CoroutineContext coroutineContext, @NotNull Channel<E> channel) {
        super(coroutineContext, channel, true);
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    /* renamed from: R0 */
    protected void mo823R0(@NotNull Throwable th, boolean z) {
        if (!m1006W0().mo802t(th) && !z) {
            CoroutineExceptionHandlerKt.m1318a(getContext(), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a1 */
    public void mo822S0(@NotNull Unit unit) {
        SendChannel.DefaultImpls.m800a(m1006W0(), null, 1, null);
    }

    @Override // kotlinx.coroutines.AbstractCoroutine, kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.channels.ProducerScope
    /* renamed from: n */
    public /* bridge */ /* synthetic */ SendChannel mo820n() {
        m1007V0();
        return this;
    }
}
