package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u00022\u00020\u00032\u00020\u0004R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u00038&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/channels/ProducerScope;", "E", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlinx/coroutines/channels/SendChannel;", "Lkotlin/Any;", "getChannel", "()Lkotlinx/coroutines/channels/SendChannel;", "channel", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalCoroutinesApi
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ProducerScope.class */
public interface ProducerScope<E> extends CoroutineScope, SendChannel<E> {
    @NotNull
    /* renamed from: n */
    SendChannel<E> mo820n();
}
