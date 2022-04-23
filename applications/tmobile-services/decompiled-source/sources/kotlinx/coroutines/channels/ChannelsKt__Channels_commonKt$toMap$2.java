package kotlinx.coroutines.channels;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0018\b\u0002\u0010\u0004*\u0012\u0012\u0006\b��\u0012\u0002H\u0002\u0012\u0006\b��\u0012\u0002H\u00030\u0005*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00070\u00062\u0006\u0010\b\u001a\u0002H\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00040\nH\u0087@"}, d2 = {"toMap", "", "K", "V", "M", "", "Lkotlinx/coroutines/channels/ReceiveChannel;", "Lkotlin/Pair;", FirebaseAnalytics.Param.DESTINATION, "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2617}, m1912m = "toMap")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2.class */
public final class ChannelsKt__Channels_commonKt$toMap$2 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22155f;

    /* renamed from: g */
    int f22156g;

    /* renamed from: h */
    Object f22157h;

    /* renamed from: i */
    Object f22158i;

    /* renamed from: j */
    Object f22159j;

    /* renamed from: k */
    Object f22160k;

    /* renamed from: l */
    Object f22161l;

    /* renamed from: m */
    Object f22162m;

    /* renamed from: n */
    Object f22163n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__Channels_commonKt$toMap$2(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22155f = obj;
        this.f22156g |= Integer.MIN_VALUE;
        return ChannelsKt.m933t0(null, null, this);
    }
}
