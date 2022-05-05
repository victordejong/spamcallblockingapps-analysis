package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0010\b\u0001\u0010\u0003*\n\u0012\u0006\b��\u0012\u0002H\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u00032'\u0010\u0007\u001a#\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\r0\b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00030\u000fH\u0087H"}, d2 = {"filterIndexedTo", "", "E", "C", "", "Lkotlinx/coroutines/channels/ReceiveChannel;", FirebaseAnalytics.Param.DESTINATION, "predicate", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", FirebaseAnalytics.Param.INDEX, "", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2437}, m1912m = "filterIndexedTo")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1.class */
public final class ChannelsKt__Channels_commonKt$filterIndexedTo$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21549f;

    /* renamed from: g */
    int f21550g;

    /* renamed from: h */
    Object f21551h;

    /* renamed from: i */
    Object f21552i;

    /* renamed from: j */
    Object f21553j;

    /* renamed from: k */
    Object f21554k;

    /* renamed from: l */
    Object f21555l;

    /* renamed from: m */
    Object f21556m;

    /* renamed from: n */
    Object f21557n;

    /* renamed from: o */
    Object f21558o;

    /* renamed from: p */
    Object f21559p;

    /* renamed from: q */
    Object f21560q;

    public ChannelsKt__Channels_commonKt$filterIndexedTo$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21549f = obj;
        this.f21550g |= Integer.MIN_VALUE;
        return ChannelsKt.m936s(null, null, null, this);
    }
}
