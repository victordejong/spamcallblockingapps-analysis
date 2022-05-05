package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.selects.SelectClause1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\bf\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0017¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\u0004\u001a\u00020\b2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H'¢\u0006\u0004\b\u0004\u0010\tJ!\u0010\u0004\u001a\u00020\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0018\u00010\nj\u0004\u0018\u0001`\u000bH&¢\u0006\u0004\b\u0004\u0010\fJ\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\rH¦\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0010\u001a\u0004\u0018\u00018��H&¢\u0006\u0004\b\u0010\u0010\u0011J\u0013\u0010\u0012\u001a\u00028��H¦@ø\u0001��¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028��0\u0014H§@ø\u0001��ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\u0013J\u0015\u0010\u0017\u001a\u0004\u0018\u00018��H§@ø\u0001��¢\u0006\u0004\b\u0017\u0010\u0013R\u001c\u0010\u0018\u001a\u00020\b8&@'X§\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u0005\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001b\u001a\u00020\b8&@'X§\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u0005\u001a\u0004\b\u001b\u0010\u0019R\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00028��0\u001d8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR+\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00140\u001d8&@'X§\u0004ø\u0001��¢\u0006\f\u0012\u0004\b\"\u0010\u0005\u001a\u0004\b!\u0010\u001fR$\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u001d8&@'X§\u0004¢\u0006\f\u0012\u0004\b%\u0010\u0005\u001a\u0004\b$\u0010\u001f\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006'"}, d2 = {"Lkotlinx/coroutines/channels/ReceiveChannel;", "E", "Lkotlin/Any;", "", "cancel", "()V", "", "cause", "", "(Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "(Ljava/util/concurrent/CancellationException;)V", "Lkotlinx/coroutines/channels/ChannelIterator;", "iterator", "()Lkotlinx/coroutines/channels/ChannelIterator;", "poll", "()Ljava/lang/Object;", "receive", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ValueOrClosed;", "receiveOrClosed-ZYPwvRU", "receiveOrClosed", "receiveOrNull", "isClosedForReceive", "()Z", "isClosedForReceive$annotations", "isEmpty", "isEmpty$annotations", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnReceive", "()Lkotlinx/coroutines/selects/SelectClause1;", "onReceive", "getOnReceiveOrClosed", "getOnReceiveOrClosed$annotations", "onReceiveOrClosed", "getOnReceiveOrNull", "getOnReceiveOrNull$annotations", "onReceiveOrNull", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ReceiveChannel.class */
public interface ReceiveChannel<E> {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ReceiveChannel$DefaultImpls.class */
    public static final class DefaultImpls {
        /* renamed from: a */
        public static /* synthetic */ void m813a(ReceiveChannel receiveChannel, CancellationException cancellationException, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    cancellationException = null;
                }
                receiveChannel.mo818a(cancellationException);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }
    }

    /* renamed from: a */
    void mo818a(@Nullable CancellationException cancellationException);

    /* renamed from: g */
    boolean mo817g();

    @NotNull
    /* renamed from: h */
    SelectClause1<E> mo816h();

    @NotNull
    ChannelIterator<E> iterator();

    @NotNull
    /* renamed from: j */
    SelectClause1<E> mo815j();

    @InternalCoroutinesApi
    @Nullable
    /* renamed from: x */
    Object mo814x(@NotNull Continuation<? super ValueOrClosed<? extends E>> continuation);
}
