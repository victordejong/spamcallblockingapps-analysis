package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003J\u001b\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H'¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u0007\u001a\u00020\u000b2\u0010\b\u0002\u0010\u0005\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\nH&¢\u0006\u0004\b\u0007\u0010\fJ\u0015\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\rH&¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannel;", "E", "Lkotlinx/coroutines/channels/SendChannel;", "Lkotlin/Any;", "", "cause", "", "cancel", "(Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "", "(Ljava/util/concurrent/CancellationException;)V", "Lkotlinx/coroutines/channels/ReceiveChannel;", "openSubscription", "()Lkotlinx/coroutines/channels/ReceiveChannel;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalCoroutinesApi
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/BroadcastChannel.class */
public interface BroadcastChannel<E> extends SendChannel<E> {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/BroadcastChannel$DefaultImpls.class */
    public static final class DefaultImpls {
    }

    /* renamed from: a */
    void mo849a(@Nullable CancellationException cancellationException);

    @NotNull
    /* renamed from: v */
    ReceiveChannel<E> mo833v();
}
