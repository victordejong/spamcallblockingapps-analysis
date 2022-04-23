package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0010\b\u0002\u0010\u0004*\n\u0012\u0006\b��\u0012\u0002H\u00030\u0005*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u0007\u001a\u0002H\u00042\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00040\u000bH\u0087H"}, d2 = {"mapTo", "", "E", "R", "C", "", "Lkotlinx/coroutines/channels/ReceiveChannel;", FirebaseAnalytics.Param.DESTINATION, "transform", "Lkotlin/Function1;", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2778}, m1912m = "mapTo")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1.class */
public final class ChannelsKt__Channels_commonKt$mapTo$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21954f;

    /* renamed from: g */
    int f21955g;

    /* renamed from: h */
    Object f21956h;

    /* renamed from: i */
    Object f21957i;

    /* renamed from: j */
    Object f21958j;

    /* renamed from: k */
    Object f21959k;

    /* renamed from: l */
    Object f21960l;

    /* renamed from: m */
    Object f21961m;

    /* renamed from: n */
    Object f21962n;

    /* renamed from: o */
    Object f21963o;

    public ChannelsKt__Channels_commonKt$mapTo$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21954f = obj;
        this.f21955g |= Integer.MIN_VALUE;
        return ChannelsKt.m971a0(null, null, null, this);
    }
}
