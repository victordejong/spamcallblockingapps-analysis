package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u000e\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\t0\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00030\u000bH\u0087H"}, d2 = {"filterNotTo", "", "E", "C", "Lkotlinx/coroutines/channels/SendChannel;", "Lkotlinx/coroutines/channels/ReceiveChannel;", FirebaseAnalytics.Param.DESTINATION, "predicate", "Lkotlin/Function1;", "", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2495, 931}, m1912m = "filterNotTo")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3.class */
public final class ChannelsKt__Channels_commonKt$filterNotTo$3 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21614f;

    /* renamed from: g */
    int f21615g;

    /* renamed from: h */
    Object f21616h;

    /* renamed from: i */
    Object f21617i;

    /* renamed from: j */
    Object f21618j;

    /* renamed from: k */
    Object f21619k;

    /* renamed from: l */
    Object f21620l;

    /* renamed from: m */
    Object f21621m;

    /* renamed from: n */
    Object f21622n;

    /* renamed from: o */
    Object f21623o;

    /* renamed from: p */
    Object f21624p;

    /* renamed from: q */
    Object f21625q;

    public ChannelsKt__Channels_commonKt$filterNotTo$3(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21614f = obj;
        this.f21615g |= Integer.MIN_VALUE;
        return ChannelsKt.m929x(null, null, null, this);
    }
}
