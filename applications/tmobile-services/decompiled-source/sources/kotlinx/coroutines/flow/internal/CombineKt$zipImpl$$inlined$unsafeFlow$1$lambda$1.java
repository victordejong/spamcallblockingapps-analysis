package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\u00020\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.class */
public final class CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private CoroutineScope f23789g;

    /* renamed from: h */
    Object f23790h;

    /* renamed from: i */
    Object f23791i;

    /* renamed from: j */
    Object f23792j;

    /* renamed from: k */
    Object f23793k;

    /* renamed from: l */
    Object f23794l;

    /* renamed from: m */
    Object f23795m;

    /* renamed from: n */
    Object f23796n;

    /* renamed from: o */
    Object f23797o;

    /* renamed from: p */
    Object f23798p;

    /* renamed from: q */
    Object f23799q;

    /* renamed from: r */
    Object f23800r;

    /* renamed from: s */
    Object f23801s;

    /* renamed from: t */
    Object f23802t;

    /* renamed from: u */
    int f23803u;

    /* renamed from: v */
    final /* synthetic */ FlowCollector f23804v;

    /* renamed from: w */
    final /* synthetic */ CombineKt$zipImpl$$inlined$unsafeFlow$1 f23805w;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\n¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "it", "", "invoke", "kotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$1.class */
    public static final class C24361 extends Lambda implements Function1<Throwable, Unit> {

        /* renamed from: g */
        final /* synthetic */ ReceiveChannel f23807g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C24361(ReceiveChannel receiveChannel) {
            super(1);
            this.f23807g = receiveChannel;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.f20447a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) {
            if (!this.f23807g.mo817g()) {
                this.f23807g.mo818a(new AbortFlowException(CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.this.f23804v));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1(FlowCollector flowCollector, Continuation continuation, CombineKt$zipImpl$$inlined$unsafeFlow$1 combineKt$zipImpl$$inlined$unsafeFlow$1) {
        super(2, continuation);
        this.f23804v = flowCollector;
        this.f23805w = combineKt$zipImpl$$inlined$unsafeFlow$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1 combineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1 = new CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1(this.f23804v, continuation, this.f23805w);
        combineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.f23789g = (CoroutineScope) obj;
        return combineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    }

    /* JADX WARN: Not initialized variable reg: 20, insn: 0x025b: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r20 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:29:0x0258 */
    /* JADX WARN: Removed duplicated region for block: B:107:0x06ac  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x06cc  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0370 A[Catch: all -> 0x0655, TRY_LEAVE, TryCatch #4 {all -> 0x0655, blocks: (B:42:0x0365, B:44:0x0370, B:81:0x061f), top: B:125:0x0365 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x044a A[Catch: all -> 0x0614, TRY_ENTER, TryCatch #2 {all -> 0x0614, blocks: (B:50:0x0407, B:54:0x044a, B:59:0x046b, B:63:0x0487), top: B:121:0x0407 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x05a9  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x05ac  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x061f A[Catch: all -> 0x0655, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x0655, blocks: (B:42:0x0365, B:44:0x0370, B:81:0x061f), top: B:125:0x0365 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0413 -> B:76:0x05f3). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x05ac -> B:75:0x05e4). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 1770
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1) create(coroutineScope, continuation)).invokeSuspend(Unit.f20447a);
    }
}
