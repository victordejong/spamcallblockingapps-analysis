package kotlinx.coroutines.channels;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a#\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010��2\b\b\u0002\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"E", "", "capacity", "Lkotlinx/coroutines/channels/Channel;", "Channel", "(I)Lkotlinx/coroutines/channels/Channel;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelKt.class */
public final class ChannelKt {
    @NotNull
    /* renamed from: a */
    public static final <E> Channel<E> m999a(int i) {
        return i != -2 ? i != -1 ? i != 0 ? i != Integer.MAX_VALUE ? new ArrayChannel<>(i) : new LinkedListChannel<>() : new RendezvousChannel<>() : new ConflatedChannel<>() : new ArrayChannel<>(Channel.f21330e.m1009a());
    }
}
