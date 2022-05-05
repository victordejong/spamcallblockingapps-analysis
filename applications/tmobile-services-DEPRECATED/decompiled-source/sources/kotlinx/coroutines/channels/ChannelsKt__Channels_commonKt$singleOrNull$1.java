package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0005H\u0087@"}, d2 = {"singleOrNull", "", "E", "Lkotlinx/coroutines/channels/ReceiveChannel;", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {647, 650}, m1912m = "singleOrNull")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1.class */
public final class ChannelsKt__Channels_commonKt$singleOrNull$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22081f;

    /* renamed from: g */
    int f22082g;

    /* renamed from: h */
    Object f22083h;

    /* renamed from: i */
    Object f22084i;

    /* renamed from: j */
    Object f22085j;

    /* renamed from: k */
    Object f22086k;

    /* renamed from: l */
    Object f22087l;

    /* renamed from: m */
    Object f22088m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__Channels_commonKt$singleOrNull$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22081f = obj;
        this.f22082g |= Integer.MIN_VALUE;
        return ChannelsKt.m945n0(null, this);
    }
}
