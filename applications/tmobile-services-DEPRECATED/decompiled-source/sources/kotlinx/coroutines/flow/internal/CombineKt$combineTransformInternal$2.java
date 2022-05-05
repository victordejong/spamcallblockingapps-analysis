package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\u00020\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.internal.CombineKt$combineTransformInternal$2", m1914f = "Combine.kt", m1913l = {146}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2.class */
public final class CombineKt$combineTransformInternal$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f23833g;

    /* renamed from: h */
    Object f23834h;

    /* renamed from: i */
    Object f23835i;

    /* renamed from: j */
    Object f23836j;

    /* renamed from: k */
    Object f23837k;

    /* renamed from: l */
    Object f23838l;

    /* renamed from: m */
    Object f23839m;

    /* renamed from: n */
    Object f23840n;

    /* renamed from: o */
    Object f23841o;

    /* renamed from: p */
    int f23842p;

    /* renamed from: q */
    final /* synthetic */ FlowCollector f23843q;

    /* renamed from: r */
    final /* synthetic */ Flow f23844r;

    /* renamed from: s */
    final /* synthetic */ Flow f23845s;

    /* renamed from: t */
    final /* synthetic */ Function4 f23846t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$combineTransformInternal$2(FlowCollector flowCollector, Flow flow, Flow flow2, Function4 function4, Continuation continuation) {
        super(2, continuation);
        this.f23843q = flowCollector;
        this.f23844r = flow;
        this.f23845s = flow2;
        this.f23846t = function4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        CombineKt$combineTransformInternal$2 combineKt$combineTransformInternal$2 = new CombineKt$combineTransformInternal$2(this.f23843q, this.f23844r, this.f23845s, this.f23846t, continuation);
        combineKt$combineTransformInternal$2.f23833g = (CoroutineScope) obj;
        return combineKt$combineTransformInternal$2;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x025c A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v21, types: [T, kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r1v24, types: [T, kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineTransformInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CombineKt$combineTransformInternal$2) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
