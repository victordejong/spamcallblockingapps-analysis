package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010 \u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u00072\u001e\u0010\t\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\f0\u000b0\nH\u0087H"}, d2 = {"groupBy", "", "E", "K", "V", "Lkotlinx/coroutines/channels/ReceiveChannel;", "keySelector", "Lkotlin/Function1;", "valueTransform", "continuation", "Lkotlin/coroutines/Continuation;", "", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", m1914f = "Channels.common.kt", m1913l = {2651}, m1912m = "groupBy")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2.class */
public final class ChannelsKt__Channels_commonKt$groupBy$2 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f21742f;

    /* renamed from: g */
    int f21743g;

    /* renamed from: h */
    Object f21744h;

    /* renamed from: i */
    Object f21745i;

    /* renamed from: j */
    Object f21746j;

    /* renamed from: k */
    Object f21747k;

    /* renamed from: l */
    Object f21748l;

    /* renamed from: m */
    Object f21749m;

    /* renamed from: n */
    Object f21750n;

    /* renamed from: o */
    Object f21751o;

    /* renamed from: p */
    Object f21752p;

    /* renamed from: q */
    Object f21753q;

    public ChannelsKt__Channels_commonKt$groupBy$2(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21742f = obj;
        this.f21743g |= Integer.MIN_VALUE;
        return ChannelsKt.m989J(null, null, null, this);
    }
}
