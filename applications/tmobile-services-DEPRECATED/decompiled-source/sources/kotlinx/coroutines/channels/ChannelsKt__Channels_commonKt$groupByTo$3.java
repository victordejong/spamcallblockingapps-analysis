package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n��\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004\"\u001c\b\u0003\u0010\u0005*\u0016\u0012\u0006\b��\u0012\u0002H\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u00070\u0006*\b\u0012\u0004\u0012\u0002H\u00020\b2\u0006\u0010\t\u001a\u0002H\u00052\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u00050\u000eH\u0087H"}, d2 = {"groupByTo", "", "E", "K", "V", "M", "", "", "Lkotlinx/coroutines/channels/ReceiveChannel;", FirebaseAnalytics.Param.DESTINATION, "keySelector", "Lkotlin/Function1;", "valueTransform", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2690}, m1912m = "groupByTo")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3.class */
public final class ChannelsKt__Channels_commonKt$groupByTo$3 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21764f;

    /* renamed from: g */
    int f21765g;

    /* renamed from: h */
    Object f21766h;

    /* renamed from: i */
    Object f21767i;

    /* renamed from: j */
    Object f21768j;

    /* renamed from: k */
    Object f21769k;

    /* renamed from: l */
    Object f21770l;

    /* renamed from: m */
    Object f21771m;

    /* renamed from: n */
    Object f21772n;

    /* renamed from: o */
    Object f21773o;

    /* renamed from: p */
    Object f21774p;

    public ChannelsKt__Channels_commonKt$groupByTo$3(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21764f = obj;
        this.f21765g |= Integer.MIN_VALUE;
        return ChannelsKt.m987L(null, null, null, null, this);
    }
}
