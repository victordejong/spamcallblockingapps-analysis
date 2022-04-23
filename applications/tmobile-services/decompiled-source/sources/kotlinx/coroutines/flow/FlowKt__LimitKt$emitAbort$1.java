package kotlinx.coroutines.flow;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0082@"}, d2 = {"emitAbort", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;", FirebaseAnalytics.Param.VALUE, "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__LimitKt", m1914f = "Limit.kt", m1913l = {73}, m1912m = "emitAbort$FlowKt__LimitKt")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__LimitKt$emitAbort$1.class */
public final class FlowKt__LimitKt$emitAbort$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22829f;

    /* renamed from: g */
    int f22830g;

    /* renamed from: h */
    Object f22831h;

    /* renamed from: i */
    Object f22832i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__LimitKt$emitAbort$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22829f = obj;
        this.f22830g |= Integer.MIN_VALUE;
        return FlowKt__LimitKt.m701b(null, null, this);
    }
}
