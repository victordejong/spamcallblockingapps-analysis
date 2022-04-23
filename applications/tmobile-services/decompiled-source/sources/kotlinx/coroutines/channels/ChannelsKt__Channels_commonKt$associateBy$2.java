package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u00072\u0018\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00040\u000b0\nH\u0087H"}, d2 = {"associateBy", "", "E", "K", "V", "Lkotlinx/coroutines/channels/ReceiveChannel;", "keySelector", "Lkotlin/Function1;", "valueTransform", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2554}, m1912m = "associateBy")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2.class */
public final class ChannelsKt__Channels_commonKt$associateBy$2 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21389f;

    /* renamed from: g */
    int f21390g;

    /* renamed from: h */
    Object f21391h;

    /* renamed from: i */
    Object f21392i;

    /* renamed from: j */
    Object f21393j;

    /* renamed from: k */
    Object f21394k;

    /* renamed from: l */
    Object f21395l;

    /* renamed from: m */
    Object f21396m;

    /* renamed from: n */
    Object f21397n;

    /* renamed from: o */
    Object f21398o;

    /* renamed from: p */
    Object f21399p;

    /* renamed from: q */
    Object f21400q;

    public ChannelsKt__Channels_commonKt$associateBy$2(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21389f = obj;
        this.f21390g |= Integer.MIN_VALUE;
        return ChannelsKt.m962f(null, null, null, this);
    }
}
