package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0005H\u0086@"}, d2 = {"singleOrNull", "", "T", "Lkotlinx/coroutines/flow/Flow;", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", m1914f = "Reduce.kt", m1913l = {150}, m1912m = "singleOrNull")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1.class */
public final class FlowKt__ReduceKt$singleOrNull$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f23181f;

    /* renamed from: g */
    int f23182g;

    /* renamed from: h */
    Object f23183h;

    /* renamed from: i */
    Object f23184i;

    /* renamed from: j */
    Object f23185j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ReduceKt$singleOrNull$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f23181f = obj;
        this.f23182g |= Integer.MIN_VALUE;
        return FlowKt.m727r(null, this);
    }
}
