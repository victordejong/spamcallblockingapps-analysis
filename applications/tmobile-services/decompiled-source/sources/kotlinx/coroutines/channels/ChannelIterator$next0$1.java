package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.channels.ChannelIterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0006\b��\u0010\u0002 \u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0097@"}, d2 = {"next0", "", "E", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelIterator$DefaultImpls", m1914f = "Channel.kt", m1913l = {463}, m1912m = "next")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelIterator$next0$1.class */
public final class ChannelIterator$next0$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21334f;

    /* renamed from: g */
    int f21335g;

    /* renamed from: h */
    final /* synthetic */ ChannelIterator f21336h;

    /* renamed from: i */
    Object f21337i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelIterator$next0$1(ChannelIterator channelIterator, Continuation continuation) {
        super(continuation);
        this.f21336h = channelIterator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21334f = obj;
        this.f21335g |= Integer.MIN_VALUE;
        return ChannelIterator.DefaultImpls.m1000a(null, this);
    }
}
