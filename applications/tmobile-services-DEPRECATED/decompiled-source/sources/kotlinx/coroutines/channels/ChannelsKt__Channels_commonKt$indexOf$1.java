package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0087@"}, d2 = {"indexOf", "", "E", "Lkotlinx/coroutines/channels/ReceiveChannel;", "element", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2323}, m1912m = "indexOf")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1.class */
public final class ChannelsKt__Channels_commonKt$indexOf$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21775f;

    /* renamed from: g */
    int f21776g;

    /* renamed from: h */
    Object f21777h;

    /* renamed from: i */
    Object f21778i;

    /* renamed from: j */
    Object f21779j;

    /* renamed from: k */
    Object f21780k;

    /* renamed from: l */
    Object f21781l;

    /* renamed from: m */
    Object f21782m;

    /* renamed from: n */
    Object f21783n;

    /* renamed from: o */
    Object f21784o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__Channels_commonKt$indexOf$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21775f = obj;
        this.f21776g |= Integer.MIN_VALUE;
        return ChannelsKt.m986M(null, null, this);
    }
}
