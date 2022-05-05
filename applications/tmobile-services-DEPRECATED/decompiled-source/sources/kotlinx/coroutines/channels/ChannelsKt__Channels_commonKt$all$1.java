package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bH\u0087H"}, d2 = {"all", "", "E", "Lkotlinx/coroutines/channels/ReceiveChannel;", "predicate", "Lkotlin/Function1;", "", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2798}, m1912m = "all")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1.class */
public final class ChannelsKt__Channels_commonKt$all$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21343f;

    /* renamed from: g */
    int f21344g;

    /* renamed from: h */
    Object f21345h;

    /* renamed from: i */
    Object f21346i;

    /* renamed from: j */
    Object f21347j;

    /* renamed from: k */
    Object f21348k;

    /* renamed from: l */
    Object f21349l;

    /* renamed from: m */
    Object f21350m;

    /* renamed from: n */
    Object f21351n;

    public ChannelsKt__Channels_commonKt$all$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21343f = obj;
        this.f21344g |= Integer.MIN_VALUE;
        return ChannelsKt.m972a(null, null, this);
    }
}
