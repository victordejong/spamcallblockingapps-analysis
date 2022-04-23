package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.ExceptionsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0012\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003B%\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/channels/ActorCoroutine;", "E", "Lkotlinx/coroutines/channels/ActorScope;", "Lkotlinx/coroutines/channels/ChannelCoroutine;", "", "exception", "", "handleJobException", "(Ljava/lang/Throwable;)Z", "cause", "", "onCancelling", "(Ljava/lang/Throwable;)V", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "Lkotlinx/coroutines/channels/Channel;", "channel", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/Channel;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ActorCoroutine.class */
class ActorCoroutine<E> extends ChannelCoroutine<E> implements ActorScope<E> {
    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: j0 */
    protected boolean mo1035j0(@NotNull Throwable th) {
        CoroutineExceptionHandlerKt.m1318a(getContext(), th);
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: w0 */
    protected void mo1034w0(@Nullable Throwable th) {
        Channel<E> W0 = m1006W0();
        CancellationException cancellationException = null;
        Throwable th2 = null;
        if (th != null) {
            if (th instanceof CancellationException) {
                th2 = th;
            }
            cancellationException = (CancellationException) th2;
            if (cancellationException == null) {
                cancellationException = ExceptionsKt.m1231a(DebugStringsKt.m1304a(this) + " was cancelled", th);
            }
        }
        W0.mo818a(cancellationException);
    }
}
