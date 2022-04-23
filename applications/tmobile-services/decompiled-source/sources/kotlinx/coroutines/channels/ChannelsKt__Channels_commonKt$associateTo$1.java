package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n��\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004\"\u0018\b\u0003\u0010\u0005*\u0012\u0012\u0006\b��\u0012\u0002H\u0003\u0012\u0006\b��\u0012\u0002H\u00040\u0006*\b\u0012\u0004\u0012\u0002H\u00020\u00072\u0006\u0010\b\u001a\u0002H\u00052\u001e\u0010\t\u001a\u001a\u0012\u0004\u0012\u0002H\u0002\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00040\u000b0\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00050\rH\u0087H"}, d2 = {"associateTo", "", "E", "K", "V", "M", "", "Lkotlinx/coroutines/channels/ReceiveChannel;", FirebaseAnalytics.Param.DESTINATION, "transform", "Lkotlin/Function1;", "Lkotlin/Pair;", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2587}, m1912m = "associateTo")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1.class */
public final class ChannelsKt__Channels_commonKt$associateTo$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21422f;

    /* renamed from: g */
    int f21423g;

    /* renamed from: h */
    Object f21424h;

    /* renamed from: i */
    Object f21425i;

    /* renamed from: j */
    Object f21426j;

    /* renamed from: k */
    Object f21427k;

    /* renamed from: l */
    Object f21428l;

    /* renamed from: m */
    Object f21429m;

    /* renamed from: n */
    Object f21430n;

    /* renamed from: o */
    Object f21431o;

    public ChannelsKt__Channels_commonKt$associateTo$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21422f = obj;
        this.f21423g |= Integer.MIN_VALUE;
        return ChannelsKt.m956i(null, null, null, this);
    }
}
