package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.selects.SelectClause2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0012\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u00032\u00020\u0004B%\u0012\u0006\u00106\u001a\u000205\u0012\f\u0010%\u001a\b\u0012\u0004\u0012\u00028��0\u0003\u0012\u0006\u00107\u001a\u00020\u0007¢\u0006\u0004\b8\u00109J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\b\u001a\u00020\f2\u000e\u0010\u0006\u001a\n\u0018\u00010\nj\u0004\u0018\u0001`\u000b¢\u0006\u0004\b\b\u0010\rJ\u0017\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0010\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\tJ5\u0010\u0015\u001a\u00020\f2#\u0010\u0014\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\f0\u0011H\u0097\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00028��H\u0096\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\fH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00028��0 H\u0096\u0001¢\u0006\u0004\b!\u0010\"J\u001b\u0010#\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00028��H\u0096Aø\u0001��¢\u0006\u0004\b#\u0010$R\"\u0010%\u001a\b\u0012\u0004\u0012\u00028��0\u00038\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u001c\u0010,\u001a\b\u0012\u0004\u0012\u00028��0)8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0016\u0010-\u001a\u00020\u00078V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0016\u0010/\u001a\u00020\u00078\u0016@\u0017X\u0097\u0005¢\u0006\u0006\u001a\u0004\b/\u0010.R\u0016\u00100\u001a\u00020\u00078\u0016@\u0017X\u0097\u0005¢\u0006\u0006\u001a\u0004\b0\u0010.R(\u00104\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0)018\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b2\u00103\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006:"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastCoroutine;", "E", "Lkotlinx/coroutines/channels/ProducerScope;", "Lkotlinx/coroutines/channels/BroadcastChannel;", "Lkotlinx/coroutines/AbstractCoroutine;", "", "cause", "", "cancel", "(Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "", "(Ljava/util/concurrent/CancellationException;)V", "cancelInternal", "(Ljava/lang/Throwable;)V", "close", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "handler", "invokeOnClose", "(Lkotlin/Function1;)V", "element", "offer", "(Ljava/lang/Object;)Z", "handled", "onCancelled", "(Ljava/lang/Throwable;Z)V", FirebaseAnalytics.Param.VALUE, "onCompleted", "(Lkotlin/Unit;)V", "Lkotlinx/coroutines/channels/ReceiveChannel;", "openSubscription", "()Lkotlinx/coroutines/channels/ReceiveChannel;", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "_channel", "Lkotlinx/coroutines/channels/BroadcastChannel;", "get_channel", "()Lkotlinx/coroutines/channels/BroadcastChannel;", "Lkotlinx/coroutines/channels/SendChannel;", "getChannel", "()Lkotlinx/coroutines/channels/SendChannel;", "channel", "isActive", "()Z", "isClosedForSend", "isFull", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "onSend", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BroadcastChannel;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/BroadcastCoroutine.class */
class BroadcastCoroutine<E> extends AbstractCoroutine<Unit> implements ProducerScope<E>, BroadcastChannel<E> {
    @NotNull

    /* renamed from: i */
    private final BroadcastChannel<E> f21323i;

    /* renamed from: X0 */
    static /* synthetic */ Object m1010X0(BroadcastCoroutine broadcastCoroutine, Object obj, Continuation continuation) {
        return broadcastCoroutine.f21323i.mo805A(obj, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Nullable
    /* renamed from: A */
    public Object mo805A(E e, @NotNull Continuation<? super Unit> continuation) {
        return m1010X0(this, e, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: C */
    public boolean mo804C() {
        return this.f21323i.mo804C();
    }

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: R */
    public void mo1008R(@NotNull Throwable th) {
        CancellationException I0 = JobSupport.m1190I0(this, th, null, 1, null);
        this.f21323i.mo849a(I0);
        m1181P(I0);
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    /* renamed from: R0 */
    protected void mo823R0(@NotNull Throwable th, boolean z) {
        if (!this.f21323i.mo802t(th) && !z) {
            CoroutineExceptionHandlerKt.m1318a(getContext(), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    /* renamed from: V0 */
    public final BroadcastChannel<E> m1012V0() {
        return this.f21323i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: W0 */
    public void mo822S0(@NotNull Unit unit) {
        SendChannel.DefaultImpls.m800a(this.f21323i, null, 1, null);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    /* renamed from: a */
    public final void mo1002a(@Nullable CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(mo1177U(), null, this);
        }
        mo1008R(cancellationException);
    }

    @Override // kotlinx.coroutines.AbstractCoroutine, kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.channels.ProducerScope
    @NotNull
    /* renamed from: n */
    public SendChannel<E> mo820n() {
        return this;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @NotNull
    /* renamed from: r */
    public SelectClause2<E, SendChannel<E>> mo803r() {
        return this.f21323i.mo803r();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: t */
    public boolean mo802t(@Nullable Throwable th) {
        boolean t = this.f21323i.mo802t(th);
        start();
        return t;
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    @NotNull
    /* renamed from: v */
    public ReceiveChannel<E> mo833v() {
        return this.f21323i.mo833v();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @ExperimentalCoroutinesApi
    /* renamed from: w */
    public void mo801w(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f21323i.mo801w(function1);
    }
}
