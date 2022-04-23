package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\b\b\u0001\u0010\u0003*\u00020\u0001\"\u000e\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u0005*\b\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u0007\u001a\u0002H\u00042)\u0010\b\u001a%\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00030\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00040\u000fH\u0087H"}, d2 = {"mapIndexedNotNullTo", "", "E", "R", "C", "Lkotlinx/coroutines/channels/SendChannel;", "Lkotlinx/coroutines/channels/ReceiveChannel;", FirebaseAnalytics.Param.DESTINATION, "transform", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", FirebaseAnalytics.Param.INDEX, "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2725, 1488}, m1912m = "mapIndexedNotNullTo")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3.class */
public final class ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21889f;

    /* renamed from: g */
    int f21890g;

    /* renamed from: h */
    Object f21891h;

    /* renamed from: i */
    Object f21892i;

    /* renamed from: j */
    Object f21893j;

    /* renamed from: k */
    Object f21894k;

    /* renamed from: l */
    Object f21895l;

    /* renamed from: m */
    Object f21896m;

    /* renamed from: n */
    Object f21897n;

    /* renamed from: o */
    Object f21898o;

    /* renamed from: p */
    Object f21899p;

    /* renamed from: q */
    Object f21900q;

    /* renamed from: r */
    Object f21901r;

    /* renamed from: s */
    Object f21902s;

    /* renamed from: t */
    Object f21903t;

    /* renamed from: u */
    Object f21904u;

    /* renamed from: v */
    Object f21905v;

    /* renamed from: w */
    int f21906w;

    public ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21889f = obj;
        this.f21890g |= Integer.MIN_VALUE;
        return ChannelsKt.m977V(null, null, null, this);
    }
}
