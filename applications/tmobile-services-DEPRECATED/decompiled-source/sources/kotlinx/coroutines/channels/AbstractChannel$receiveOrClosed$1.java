package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\u0004H\u0086@"}, d2 = {"receiveOrClosed", "", "E", "continuation", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/channels/ValueOrClosed;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.AbstractChannel", m1914f = "AbstractChannel.kt", m1913l = {602}, m1912m = "receiveOrClosed-ZYPwvRU")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1.class */
public final class AbstractChannel$receiveOrClosed$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21293f;

    /* renamed from: g */
    int f21294g;

    /* renamed from: h */
    final /* synthetic */ AbstractChannel f21295h;

    /* renamed from: i */
    Object f21296i;

    /* renamed from: j */
    Object f21297j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractChannel$receiveOrClosed$1(AbstractChannel abstractChannel, Continuation continuation) {
        super(continuation);
        this.f21295h = abstractChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21293f = obj;
        this.f21294g |= Integer.MIN_VALUE;
        return this.f21295h.mo814x(this);
    }
}
