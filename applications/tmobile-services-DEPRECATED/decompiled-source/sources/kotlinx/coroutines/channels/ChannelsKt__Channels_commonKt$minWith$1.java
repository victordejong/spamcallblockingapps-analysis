package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u001a\u0010\u0004\u001a\u0016\u0012\u0006\b��\u0012\u0002H\u00020\u0005j\n\u0012\u0006\b��\u0012\u0002H\u0002`\u00062\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\bH\u0087@"}, d2 = {"minWith", "", "E", "Lkotlinx/coroutines/channels/ReceiveChannel;", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {1972, 1974}, m1912m = "minWith")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1.class */
public final class ChannelsKt__Channels_commonKt$minWith$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22005f;

    /* renamed from: g */
    int f22006g;

    /* renamed from: h */
    Object f22007h;

    /* renamed from: i */
    Object f22008i;

    /* renamed from: j */
    Object f22009j;

    /* renamed from: k */
    Object f22010k;

    /* renamed from: l */
    Object f22011l;

    /* renamed from: m */
    Object f22012m;

    /* renamed from: n */
    Object f22013n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__Channels_commonKt$minWith$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22005f = obj;
        this.f22006g |= Integer.MIN_VALUE;
        return ChannelsKt.m961f0(null, null, this);
    }
}
