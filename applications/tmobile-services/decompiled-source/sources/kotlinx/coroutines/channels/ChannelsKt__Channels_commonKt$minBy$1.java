package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u000e\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00072\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\tH\u0087H"}, d2 = {"minBy", "", "E", "R", "", "Lkotlinx/coroutines/channels/ReceiveChannel;", "selector", "Lkotlin/Function1;", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {1942, 1945}, m1912m = "minBy")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1.class */
public final class ChannelsKt__Channels_commonKt$minBy$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21995f;

    /* renamed from: g */
    int f21996g;

    /* renamed from: h */
    Object f21997h;

    /* renamed from: i */
    Object f21998i;

    /* renamed from: j */
    Object f21999j;

    /* renamed from: k */
    Object f22000k;

    /* renamed from: l */
    Object f22001l;

    /* renamed from: m */
    Object f22002m;

    /* renamed from: n */
    Object f22003n;

    /* renamed from: o */
    Object f22004o;

    public ChannelsKt__Channels_commonKt$minBy$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21995f = obj;
        this.f21996g |= Integer.MIN_VALUE;
        return ChannelsKt.m963e0(null, null, this);
    }
}
