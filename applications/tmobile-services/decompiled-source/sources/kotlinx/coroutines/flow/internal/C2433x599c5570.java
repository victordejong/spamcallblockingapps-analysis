package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0004\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"<anonymous>", "", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$onReceive$1", "kotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$$special$$inlined$onReceive$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2 */
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2.class */
public final class C2433x599c5570 extends SuspendLambda implements Function2<Object, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private Object f23754g;

    /* renamed from: h */
    Object f23755h;

    /* renamed from: i */
    int f23756i;

    /* renamed from: j */
    final /* synthetic */ Function2 f23757j;

    /* renamed from: k */
    final /* synthetic */ CombineKt$combineTransformInternal$2 f23758k;

    /* renamed from: l */
    final /* synthetic */ Ref.BooleanRef f23759l;

    /* renamed from: m */
    final /* synthetic */ Ref.ObjectRef f23760m;

    /* renamed from: n */
    final /* synthetic */ Ref.ObjectRef f23761n;

    /* renamed from: o */
    final /* synthetic */ Ref.ObjectRef f23762o;

    /* renamed from: p */
    final /* synthetic */ Ref.BooleanRef f23763p;

    /* renamed from: q */
    final /* synthetic */ Ref.ObjectRef f23764q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2433x599c5570(Function2 function2, Continuation continuation, CombineKt$combineTransformInternal$2 combineKt$combineTransformInternal$2, Ref.BooleanRef booleanRef, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3, Ref.BooleanRef booleanRef2, Ref.ObjectRef objectRef4) {
        super(2, continuation);
        this.f23757j = function2;
        this.f23758k = combineKt$combineTransformInternal$2;
        this.f23759l = booleanRef;
        this.f23760m = objectRef;
        this.f23761n = objectRef2;
        this.f23762o = objectRef3;
        this.f23763p = booleanRef2;
        this.f23764q = objectRef4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        C2433x599c5570 combineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2 = new C2433x599c5570(this.f23757j, continuation, this.f23758k, this.f23759l, this.f23760m, this.f23761n, this.f23762o, this.f23763p, this.f23764q);
        combineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2.f23754g = obj;
        return combineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23756i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            Object obj2 = this.f23754g;
            if (obj2 == null) {
                this.f23759l.f20744f = true;
            } else {
                Function2 function2 = this.f23757j;
                this.f23755h = obj2;
                this.f23756i = 1;
                if (function2.mo422o(obj2, this) == d) {
                    return d;
                }
            }
        } else if (i == 1) {
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((C2433x599c5570) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
