package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "", "T", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$1$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2$invokeSuspend$$inlined$select$lambda$1 */
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$invokeSuspend$$inlined$select$lambda$1.class */
final class C2279x5d4af17d extends SuspendLambda implements Function2<Object, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private Object f22487g;

    /* renamed from: h */
    Object f22488h;

    /* renamed from: i */
    int f22489i;

    /* renamed from: j */
    final /* synthetic */ FlowKt__DelayKt$debounce$2 f22490j;

    /* renamed from: k */
    final /* synthetic */ Ref.ObjectRef f22491k;

    /* renamed from: l */
    final /* synthetic */ Ref.ObjectRef f22492l;

    /* renamed from: m */
    final /* synthetic */ FlowCollector f22493m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2279x5d4af17d(Continuation continuation, FlowKt__DelayKt$debounce$2 flowKt__DelayKt$debounce$2, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, FlowCollector flowCollector) {
        super(2, continuation);
        this.f22490j = flowKt__DelayKt$debounce$2;
        this.f22491k = objectRef;
        this.f22492l = objectRef2;
        this.f22493m = flowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        C2279x5d4af17d flowKt__DelayKt$debounce$2$invokeSuspend$$inlined$select$lambda$1 = new C2279x5d4af17d(continuation, this.f22490j, this.f22491k, this.f22492l, this.f22493m);
        flowKt__DelayKt$debounce$2$invokeSuspend$$inlined$select$lambda$1.f22487g = obj;
        return flowKt__DelayKt$debounce$2$invokeSuspend$$inlined$select$lambda$1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [T] */
    /* JADX WARN: Type inference failed for: r0v9, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [kotlinx.coroutines.internal.Symbol, T] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r6 = r0
            r0 = r4
            int r0 = r0.f22489i
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0023
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0019
            r0 = r5
            kotlin.ResultKt.m2472b(r0)
            goto L_0x006d
        L_0x0019:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0023:
            r0 = r5
            kotlin.ResultKt.m2472b(r0)
            r0 = r4
            java.lang.Object r0 = r0.f22487g
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x007a
            r0 = r4
            kotlin.jvm.internal.Ref$ObjectRef r0 = r0.f22492l
            T r0 = r0.f20751f
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x006d
            r0 = r4
            kotlinx.coroutines.flow.FlowCollector r0 = r0.f22493m
            r10 = r0
            r0 = r9
            r5 = r0
            r0 = r9
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.flow.internal.NullSurrogateKt.f23864a
            if (r0 != r1) goto L_0x0053
            r0 = 0
            r5 = r0
        L_0x0053:
            r0 = r4
            r1 = r8
            r0.f22488h = r1
            r0 = r4
            r1 = 1
            r0.f22489i = r1
            r0 = r10
            r1 = r5
            r2 = r4
            java.lang.Object r0 = r0.mo588b(r1, r2)
            r1 = r6
            if (r0 != r1) goto L_0x006d
            r0 = r6
            return r0
        L_0x006d:
            r0 = r4
            kotlin.jvm.internal.Ref$ObjectRef r0 = r0.f22492l
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.flow.internal.NullSurrogateKt.f23865b
            r0.f20751f = r1
            goto L_0x0083
        L_0x007a:
            r0 = r4
            kotlin.jvm.internal.Ref$ObjectRef r0 = r0.f22492l
            r1 = r8
            r0.f20751f = r1
        L_0x0083:
            kotlin.Unit r0 = kotlin.Unit.f20447a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.C2279x5d4af17d.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((C2279x5d4af17d) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
