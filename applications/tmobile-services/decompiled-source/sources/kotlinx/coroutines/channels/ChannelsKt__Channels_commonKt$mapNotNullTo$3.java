package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\b\b\u0001\u0010\u0003*\u00020\u0001\"\u000e\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u0005*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u0007\u001a\u0002H\u00042\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00030\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00040\u000bH\u0087H"}, d2 = {"mapNotNullTo", "", "E", "R", "C", "Lkotlinx/coroutines/channels/SendChannel;", "Lkotlinx/coroutines/channels/ReceiveChannel;", FirebaseAnalytics.Param.DESTINATION, "transform", "Lkotlin/Function1;", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2768, 1595}, m1912m = "mapNotNullTo")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3.class */
public final class ChannelsKt__Channels_commonKt$mapNotNullTo$3 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21941f;

    /* renamed from: g */
    int f21942g;

    /* renamed from: h */
    Object f21943h;

    /* renamed from: i */
    Object f21944i;

    /* renamed from: j */
    Object f21945j;

    /* renamed from: k */
    Object f21946k;

    /* renamed from: l */
    Object f21947l;

    /* renamed from: m */
    Object f21948m;

    /* renamed from: n */
    Object f21949n;

    /* renamed from: o */
    Object f21950o;

    /* renamed from: p */
    Object f21951p;

    /* renamed from: q */
    Object f21952q;

    /* renamed from: r */
    Object f21953r;

    public ChannelsKt__Channels_commonKt$mapNotNullTo$3(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21941f = obj;
        this.f21942g |= Integer.MIN_VALUE;
        return ChannelsKt.m973Z(null, null, null, this);
    }
}
