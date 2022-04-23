package kotlinx.coroutines.flow.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", "R", "T", FirebaseAnalytics.Param.VALUE, "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1$2"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$1 */
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$1.class */
final class C2430x2d5a9c55 extends SuspendLambda implements Function2<Object, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private Object f23720g;

    /* renamed from: h */
    Object f23721h;

    /* renamed from: i */
    Object f23722i;

    /* renamed from: j */
    int f23723j;

    /* renamed from: k */
    final /* synthetic */ int f23724k;

    /* renamed from: l */
    final /* synthetic */ CombineKt$combineInternal$2 f23725l;

    /* renamed from: m */
    final /* synthetic */ int f23726m;

    /* renamed from: n */
    final /* synthetic */ Boolean[] f23727n;

    /* renamed from: o */
    final /* synthetic */ Ref.ObjectRef f23728o;

    /* renamed from: p */
    final /* synthetic */ Object[] f23729p;

    /* renamed from: q */
    final /* synthetic */ Ref.IntRef f23730q;

    /* renamed from: r */
    final /* synthetic */ Ref.IntRef f23731r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2430x2d5a9c55(int i, Continuation continuation, CombineKt$combineInternal$2 combineKt$combineInternal$2, int i2, Boolean[] boolArr, Ref.ObjectRef objectRef, Object[] objArr, Ref.IntRef intRef, Ref.IntRef intRef2) {
        super(2, continuation);
        this.f23724k = i;
        this.f23725l = combineKt$combineInternal$2;
        this.f23726m = i2;
        this.f23727n = boolArr;
        this.f23728o = objectRef;
        this.f23729p = objArr;
        this.f23730q = intRef;
        this.f23731r = intRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        C2430x2d5a9c55 combineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$1 = new C2430x2d5a9c55(this.f23724k, continuation, this.f23725l, this.f23726m, this.f23727n, this.f23728o, this.f23729p, this.f23730q, this.f23731r);
        combineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$1.f23720g = obj;
        return combineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23723j;
        if (i == 0) {
            ResultKt.m2472b(obj);
            Object obj2 = this.f23720g;
            if (this.f23729p[this.f23724k] == null) {
                this.f23730q.f20749f--;
            }
            this.f23729p[this.f23724k] = obj2;
            if (this.f23730q.f20749f != 0) {
                return Unit.f20447a;
            }
            Object[] objArr = (Object[]) this.f23725l.f23831s.invoke();
            int i2 = this.f23726m;
            for (int i3 = 0; i3 < i2; i3++) {
                Symbol symbol = NullSurrogateKt.f23864a;
                Object obj3 = this.f23729p[i3];
                Object obj4 = obj3;
                if (obj3 == symbol) {
                    obj4 = null;
                }
                objArr[i3] = obj4;
            }
            CombineKt$combineInternal$2 combineKt$combineInternal$2 = this.f23725l;
            Function3 function3 = combineKt$combineInternal$2.f23832t;
            FlowCollector flowCollector = combineKt$combineInternal$2.f23829q;
            if (objArr != null) {
                this.f23721h = obj2;
                this.f23722i = objArr;
                this.f23723j = 1;
                InlineMarker.m1835c(6);
                Object a = function3.mo594a(flowCollector, objArr, this);
                InlineMarker.m1835c(7);
                if (a == d) {
                    return d;
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
        } else if (i == 1) {
            Object[] objArr2 = (Object[]) this.f23722i;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((C2430x2d5a9c55) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
