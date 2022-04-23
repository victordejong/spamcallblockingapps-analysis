package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007H\u0087@"}, d2 = {"elementAt", "", "E", "Lkotlinx/coroutines/channels/ReceiveChannel;", FirebaseAnalytics.Param.INDEX, "", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2228}, m1912m = "elementAt")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1.class */
public final class ChannelsKt__Channels_commonKt$elementAt$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21505f;

    /* renamed from: g */
    int f21506g;

    /* renamed from: h */
    Object f21507h;

    /* renamed from: i */
    Object f21508i;

    /* renamed from: j */
    Object f21509j;

    /* renamed from: k */
    Object f21510k;

    /* renamed from: l */
    Object f21511l;

    /* renamed from: m */
    Object f21512m;

    /* renamed from: n */
    int f21513n;

    /* renamed from: o */
    int f21514o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__Channels_commonKt$elementAt$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21505f = obj;
        this.f21506g |= Integer.MIN_VALUE;
        return ChannelsKt.m942p(null, 0, this);
    }
}
