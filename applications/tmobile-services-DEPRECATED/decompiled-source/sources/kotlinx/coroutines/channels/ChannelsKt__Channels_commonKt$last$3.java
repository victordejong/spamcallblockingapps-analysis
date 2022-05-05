package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\bH\u0087H"}, d2 = {"last", "", "E", "Lkotlinx/coroutines/channels/ReceiveChannel;", "predicate", "Lkotlin/Function1;", "", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2361}, m1912m = "last")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3.class */
public final class ChannelsKt__Channels_commonKt$last$3 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21814f;

    /* renamed from: g */
    int f21815g;

    /* renamed from: h */
    Object f21816h;

    /* renamed from: i */
    Object f21817i;

    /* renamed from: j */
    Object f21818j;

    /* renamed from: k */
    Object f21819k;

    /* renamed from: l */
    Object f21820l;

    /* renamed from: m */
    Object f21821m;

    /* renamed from: n */
    Object f21822n;

    /* renamed from: o */
    Object f21823o;

    /* renamed from: p */
    Object f21824p;

    public ChannelsKt__Channels_commonKt$last$3(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21814f = obj;
        this.f21815g |= Integer.MIN_VALUE;
        return ChannelsKt.m982Q(null, null, this);
    }
}
