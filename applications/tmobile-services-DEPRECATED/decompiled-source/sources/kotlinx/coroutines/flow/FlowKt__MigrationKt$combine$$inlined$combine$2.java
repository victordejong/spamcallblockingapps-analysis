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
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$2.class */
public final class FlowKt__MigrationKt$combine$$inlined$combine$2 implements Flow<R> {

    /* renamed from: a */
    final /* synthetic */ Flow[] f22958a;

    /* renamed from: b */
    final /* synthetic */ Function5 f22959b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@¨\u0006\t"}, d2 = {"collect", "", "T", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combine$$inlined$combine$2$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$2$1.class */
    public static final class C23311 extends ContinuationImpl {

        /* renamed from: f */
        /* synthetic */ Object f22960f;

        /* renamed from: g */
        int f22961g;

        /* renamed from: h */
        final /* synthetic */ FlowKt__MigrationKt$combine$$inlined$combine$2 f22962h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f22960f = obj;
            this.f22961g |= Integer.MIN_VALUE;
            return this.f22962h.mo589a(null, this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0011\n\u0002\b\u0006\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"<anonymous>", "", "T", "R", "invoke", "()[Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combine$$inlined$combine$2$2 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$2$2.class */
    public static final class C23322 extends Lambda implements Function0<Object[]> {
        public C23322() {
            super(0);
        }

        @NotNull
        /* renamed from: b */
        public final Object[] invoke() {
            return new Object[FlowKt__MigrationKt$combine$$inlined$combine$2.this.f22958a.length];
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0004\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$2", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$2$lambda$2"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$combine$$inlined$combine$2$3", m1914f = "Zip.kt", m1913l = {StatusLine.HTTP_PERM_REDIRECT, StatusLine.HTTP_PERM_REDIRECT}, m1912m = "invokeSuspend")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combine$$inlined$combine$2$3 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$2$3.class */
    public static final class C23333 extends SuspendLambda implements Function3<FlowCollector<? super R>, Object[], Continuation<? super Unit>, Object> {

        /* renamed from: g */
        private FlowCollector f22964g;

        /* renamed from: h */
        private Object[] f22965h;

        /* renamed from: i */
        Object f22966i;

        /* renamed from: j */
        Object f22967j;

        /* renamed from: k */
        Object f22968k;

        /* renamed from: l */
        int f22969l;

        /* renamed from: m */
        final /* synthetic */ FlowKt__MigrationKt$combine$$inlined$combine$2 f22970m;

        /* renamed from: n */
        Object f22971n;

        /* renamed from: o */
        Object f22972o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23333(Continuation continuation, FlowKt__MigrationKt$combine$$inlined$combine$2 flowKt__MigrationKt$combine$$inlined$combine$2) {
            super(3, continuation);
            this.f22970m = flowKt__MigrationKt$combine$$inlined$combine$2;
        }

        @Override // kotlin.jvm.functions.Function3
        /* renamed from: a */
        public final Object mo594a(Object obj, Object[] objArr, Continuation<? super Unit> continuation) {
            return ((C23333) m695d((FlowCollector) obj, objArr, continuation)).invokeSuspend(Unit.f20447a);
        }

        @NotNull
        /* renamed from: d */
        public final Continuation<Unit> m695d(@NotNull FlowCollector<? super R> flowCollector, @NotNull Object[] objArr, @NotNull Continuation<? super Unit> continuation) {
            C23333 r0 = new C23333(continuation, this.f22970m);
            r0.f22964g = flowCollector;
            r0.f22965h = objArr;
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
            int i = this.f22969l;
            if (i == 0) {
                ResultKt.m2472b(obj);
                FlowCollector flowCollector3 = this.f22964g;
                objArr = this.f22965h;
                Function5 function5 = this.f22970m.f22959b;
                Object obj3 = objArr[0];
                Object obj4 = objArr[1];
                Object obj5 = objArr[2];
                Object obj6 = objArr[3];
                this.f22966i = flowCollector3;
                this.f22967j = objArr;
                this.f22968k = flowCollector3;
                this.f22971n = this;
                this.f22972o = objArr;
                this.f22969l = 1;
                obj2 = function5.mo1840t(obj3, obj4, obj5, obj6, this);
                if (obj2 == d) {
                    return d;
                }
                flowCollector = flowCollector3;
                flowCollector2 = flowCollector3;
            } else if (i == 1) {
                Object[] objArr2 = (Object[]) this.f22972o;
                Continuation continuation = (Continuation) this.f22971n;
                flowCollector2 = (FlowCollector) this.f22968k;
                objArr = (Object[]) this.f22967j;
                flowCollector = (FlowCollector) this.f22966i;
                ResultKt.m2472b(obj);
                obj2 = obj;
            } else if (i == 2) {
                Object[] objArr3 = (Object[]) this.f22967j;
                FlowCollector flowCollector4 = (FlowCollector) this.f22966i;
                ResultKt.m2472b(obj);
                return Unit.f20447a;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this.f22966i = flowCollector;
            this.f22967j = objArr;
            this.f22969l = 2;
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
        Object e = CombineKt.m608e(flowCollector, this.f22958a, new C23322(), new C23333(null, this), continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return e == d ? e : Unit.f20447a;
    }
}
