package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n��\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004\"\u0018\b\u0003\u0010\u0005*\u0012\u0012\u0006\b��\u0012\u0002H\u0003\u0012\u0006\b��\u0012\u0002H\u00040\u0006*\b\u0012\u0004\u0012\u0002H\u00020\u00072\u0006\u0010\b\u001a\u0002H\u00052\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00050\rH\u0087H"}, d2 = {"associateByTo", "", "E", "K", "V", "M", "", "Lkotlinx/coroutines/channels/ReceiveChannel;", FirebaseAnalytics.Param.DESTINATION, "keySelector", "Lkotlin/Function1;", "valueTransform", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2577}, m1912m = "associateByTo")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3.class */
public final class ChannelsKt__Channels_commonKt$associateByTo$3 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21411f;

    /* renamed from: g */
    int f21412g;

    /* renamed from: h */
    Object f21413h;

    /* renamed from: i */
    Object f21414i;

    /* renamed from: j */
    Object f21415j;

    /* renamed from: k */
    Object f21416k;

    /* renamed from: l */
    Object f21417l;

    /* renamed from: m */
    Object f21418m;

    /* renamed from: n */
    Object f21419n;

    /* renamed from: o */
    Object f21420o;

    /* renamed from: p */
    Object f21421p;

    public ChannelsKt__Channels_commonKt$associateByTo$3(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21411f = obj;
        this.f21412g |= Integer.MIN_VALUE;
        return ChannelsKt.m958h(null, null, null, null, this);
    }
}
