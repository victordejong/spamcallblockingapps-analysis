package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\b\b\u0001\u0010\u0003*\u0002H\u0002*\b\u0012\u0004\u0012\u0002H\u00030\u00042'\u0010\u0005\u001a#\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000bH\u0087H"}, d2 = {"reduce", "", "S", "E", "Lkotlinx/coroutines/channels/ReceiveChannel;", "operation", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "acc", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2035, 2037}, m1912m = "reduce")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1.class */
public final class ChannelsKt__Channels_commonKt$reduce$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22040f;

    /* renamed from: g */
    int f22041g;

    /* renamed from: h */
    Object f22042h;

    /* renamed from: i */
    Object f22043i;

    /* renamed from: j */
    Object f22044j;

    /* renamed from: k */
    Object f22045k;

    /* renamed from: l */
    Object f22046l;

    /* renamed from: m */
    Object f22047m;

    /* renamed from: n */
    Object f22048n;

    public ChannelsKt__Channels_commonKt$reduce$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22040f = obj;
        this.f22041g |= Integer.MIN_VALUE;
        return ChannelsKt.m953j0(null, null, this);
    }
}
