package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.internal.CombineKt;
import okhttp3.internal.http.StatusLine;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combine$2.class */
public final class FlowKt__ZipKt$combine$$inlined$combine$2 implements Flow<R> {

    /* renamed from: a */
    final /* synthetic */ Flow[] f23426a;

    /* renamed from: b */
    final /* synthetic */ Function5 f23427b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@¨\u0006\t"}, d2 = {"collect", "", "T", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combine$2$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combine$2$1.class */
    public static final class C24011 extends ContinuationImpl {

        /* renamed from: f */
        /* synthetic */ Object f23428f;

        /* renamed from: g */
        int f23429g;

        /* renamed from: h */
        final /* synthetic */ FlowKt__ZipKt$combine$$inlined$combine$2 f23430h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f23428f = obj;
            this.f23429g |= Integer.MIN_VALUE;
            return this.f23430h.mo589a(null, this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0011\n\u0002\b\u0006\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"<anonymous>", "", "T", "R", "invoke", "()[Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$1", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3$lambda$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combine$2$2 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combine$2$2.class */
    public static final class C24022 extends Lambda implements Function0<Object[]> {
        public C24022() {
            super(0);
        }

        @NotNull
        /* renamed from: b */
        public final Object[] invoke() {
            return new Object[FlowKt__ZipKt$combine$$inlined$combine$2.this.f23426a.length];
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0004\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$2", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$3$lambda$2"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combine$2$3", m1914f = "Zip.kt", m1913l = {StatusLine.HTTP_PERM_REDIRECT, StatusLine.HTTP_PERM_REDIRECT}, m1912m = "invokeSuspend")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combine$2$3 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combine$2$3.class */
    public static final class C24033 extends SuspendLambda implements Function3<FlowCollector<? super R>, Object[], Continuation<? super Unit>, Object> {

        /* renamed from: g */
        private FlowCollector f23432g;

        /* renamed from: h */
        private Object[] f23433h;

        /* renamed from: i */
        Object f23434i;

        /* renamed from: j */
        Object f23435j;

        /* renamed from: k */
        Object f23436k;

        /* renamed from: l */
        int f23437l;

        /* renamed from: m */
        final /* synthetic */ FlowKt__ZipKt$combine$$inlined$combine$2 f23438m;

        /* renamed from: n */
        Object f23439n;

        /* renamed from: o */
        Object f23440o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C24033(Continuation continuation, FlowKt__ZipKt$combine$$inlined$combine$2 flowKt__ZipKt$combine$$inlined$combine$2) {
            super(3, continuation);
            this.f23438m = flowKt__ZipKt$combine$$inlined$combine$2;
        }

        @Override // kotlin.jvm.functions.Function3
        /* renamed from: a */
        public final Object mo594a(Object obj, Object[] objArr, Continuation<? super Unit> continuation) {
            return ((C24033) m666d((FlowCollector) obj, objArr, continuation)).invokeSuspend(Unit.f20447a);
        }

        @NotNull
        /* renamed from: d */
        public final Continuation<Unit> m666d(@NotNull FlowCollector<? super R> flowCollector, @NotNull Object[] objArr, @NotNull Continuation<? super Unit> continuation) {
            C24033 r0 = new C24033(continuation, this.f23438m);
            r0.f23432g = flowCollector;
            r0.f23433h = objArr;
            return r0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object d;
            Object obj2;
            FlowCollector flowCollector;
            Object[] objArr;
            FlowCollector flowCollector2;
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            int i = this.f23437l;
            if (i == 0) {
                ResultKt.m2472b(obj);
                FlowCollector flowCollector3 = this.f23432g;
                Object[] objArr2 = this.f23433h;
                Function5 function5 = this.f23438m.f23427b;
                Object obj3 = objArr2[0];
                Object obj4 = objArr2[1];
                Object obj5 = objArr2[2];
                Object obj6 = objArr2[3];
                this.f23434i = flowCollector3;
                this.f23435j = objArr2;
                this.f23436k = flowCollector3;
                this.f23439n = this;
                this.f23440o = objArr2;
                this.f23437l = 1;
                obj2 = function5.mo1840t(obj3, obj4, obj5, obj6, this);
                if (obj2 == d) {
                    return d;
                }
                flowCollector = flowCollector3;
                objArr = objArr2;
                flowCollector2 = flowCollector3;
            } else if (i == 1) {
                Object[] objArr3 = (Object[]) this.f23440o;
                Continuation continuation = (Continuation) this.f23439n;
                flowCollector2 = (FlowCollector) this.f23436k;
                objArr = (Object[]) this.f23435j;
                flowCollector = (FlowCollector) this.f23434i;
                ResultKt.m2472b(obj);
                obj2 = obj;
            } else if (i == 2) {
                Object[] objArr4 = (Object[]) this.f23435j;
                FlowCollector flowCollector4 = (FlowCollector) this.f23434i;
                ResultKt.m2472b(obj);
                return Unit.f20447a;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this.f23434i = flowCollector;
            this.f23435j = objArr;
            this.f23437l = 2;
            if (flowCollector2.mo588b(obj2, this) == d) {
                return d;
            }
            return Unit.f20447a;
        }
    }

    @Override // kotlinx.coroutines.flow.Flow
    @Nullable
    /* renamed from: a */
    public Object mo589a(@NotNull FlowCollector flowCollector, @NotNull Continuation continuation) {
        Object d;
        Object e = CombineKt.m608e(flowCollector, this.f23426a, new C24022(), new C24033(null, this), continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return e == d ? e : Unit.f20447a;
    }
}
