package kotlinx.coroutines.flow.internal;

import com.google.android.gms.common.api.Api;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\n\b'\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b,\u0010-J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028��0\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\rH\u0096@ø\u0001��¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u000f2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u0012H¤@ø\u0001��¢\u0006\u0004\b\u0013\u0010\u0014J%\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H$¢\u0006\u0004\b\u0019\u0010\u001aJ%\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028��0\u00022\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001d\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028��0\u001d2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0003H\u0016¢\u0006\u0004\b \u0010\u0005R\u0016\u0010\u0018\u001a\u00020\u00178\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010!R;\u0010'\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0#\u0012\u0006\u0012\u0004\u0018\u00010$0\"8@@��X\u0080\u0004ø\u0001��¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0016\u0010\u0016\u001a\u00020\u00158\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010(R\u0016\u0010+\u001a\u00020\u00178B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006."}, d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlow;", "T", "Lkotlinx/coroutines/flow/internal/FusibleFlow;", "", "additionalToStringProps", "()Ljava/lang/String;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/CoroutineStart;", "start", "Lkotlinx/coroutines/channels/BroadcastChannel;", "broadcastImpl", "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineStart;)Lkotlinx/coroutines/channels/BroadcastChannel;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ProducerScope;", "collectTo", "(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "create", "(Lkotlin/coroutines/CoroutineContext;I)Lkotlinx/coroutines/flow/internal/ChannelFlow;", "fuse", "(Lkotlin/coroutines/CoroutineContext;I)Lkotlinx/coroutines/flow/internal/FusibleFlow;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "produceImpl", "(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/ReceiveChannel;", "toString", "I", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "getCollectToFun$kotlinx_coroutines_core", "()Lkotlin/jvm/functions/Function2;", "collectToFun", "Lkotlin/coroutines/CoroutineContext;", "getProduceCapacity", "()I", "produceCapacity", "<init>", "(Lkotlin/coroutines/CoroutineContext;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlow.class */
public abstract class ChannelFlow<T> implements FusibleFlow<T> {
    @JvmField
    @NotNull

    /* renamed from: a */
    public final CoroutineContext f23648a;
    @JvmField

    /* renamed from: b */
    public final int f23649b;

    public ChannelFlow(@NotNull CoroutineContext coroutineContext, int i) {
        this.f23648a = coroutineContext;
        this.f23649b = i;
    }

    /* renamed from: d */
    static /* synthetic */ Object m628d(ChannelFlow channelFlow, FlowCollector flowCollector, Continuation continuation) {
        Object d;
        Object d2 = CoroutineScopeKt.m1309d(new ChannelFlow$collect$2(channelFlow, flowCollector, null), continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return d2 == d ? d2 : Unit.f20447a;
    }

    /* renamed from: h */
    private final int m626h() {
        int i = this.f23649b;
        int i2 = i;
        if (i == -3) {
            i2 = -2;
        }
        return i2;
    }

    @Override // kotlinx.coroutines.flow.Flow
    @Nullable
    /* renamed from: a */
    public Object mo589a(@NotNull FlowCollector<? super T> flowCollector, @NotNull Continuation<? super Unit> continuation) {
        return m628d(this, flowCollector, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    @NotNull
    /* renamed from: b */
    public FusibleFlow<T> mo601b(@NotNull CoroutineContext coroutineContext, int i) {
        CoroutineContext plus = coroutineContext.plus(this.f23648a);
        int i2 = this.f23649b;
        if (i2 != -3) {
            if (i != -3) {
                if (i2 != -2) {
                    if (i != -2) {
                        if (i2 == -1 || i == -1) {
                            i = -1;
                        } else {
                            boolean z = true;
                            if (DebugKt.m1308a()) {
                                if (!(this.f23649b >= 0)) {
                                    throw new AssertionError();
                                }
                            }
                            if (DebugKt.m1308a()) {
                                if (i < 0) {
                                    z = false;
                                }
                                if (!z) {
                                    throw new AssertionError();
                                }
                            }
                            i += this.f23649b;
                            if (i < 0) {
                                i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                            }
                        }
                    }
                }
            }
            i = i2;
        }
        return (!Intrinsics.m1834a(plus, this.f23648a) || i != this.f23649b) ? mo614f(plus, i) : this;
    }

    @NotNull
    /* renamed from: c */
    public String mo621c() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    /* renamed from: e */
    public abstract Object mo615e(@NotNull ProducerScope<? super T> producerScope, @NotNull Continuation<? super Unit> continuation);

    @NotNull
    /* renamed from: f */
    protected abstract ChannelFlow<T> mo614f(@NotNull CoroutineContext coroutineContext, int i);

    @NotNull
    /* renamed from: g */
    public final Function2<ProducerScope<? super T>, Continuation<? super Unit>, Object> m627g() {
        return new ChannelFlow$collectToFun$1(this, null);
    }

    @NotNull
    /* renamed from: i */
    public ReceiveChannel<T> mo613i(@NotNull CoroutineScope coroutineScope) {
        return ProduceKt.m825f(coroutineScope, this.f23648a, m626h(), CoroutineStart.ATOMIC, null, m627g(), 8, null);
    }

    @NotNull
    public String toString() {
        return DebugStringsKt.m1304a(this) + '[' + mo621c() + "context=" + this.f23648a + ", capacity=" + this.f23649b + ']';
    }
}
