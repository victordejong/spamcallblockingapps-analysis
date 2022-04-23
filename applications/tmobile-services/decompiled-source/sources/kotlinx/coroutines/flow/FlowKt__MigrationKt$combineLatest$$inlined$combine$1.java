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
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.internal.CombineKt;
import okhttp3.internal.http.StatusLine;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$1"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$1.class */
public final class FlowKt__MigrationKt$combineLatest$$inlined$combine$1 implements Flow<R> {

    /* renamed from: a */
    final /* synthetic */ Flow[] f23027a;

    /* renamed from: b */
    final /* synthetic */ Function4 f23028b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@¨\u0006\n"}, d2 = {"collect", "", "T", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$1$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$1$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combineLatest$$inlined$combine$1$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$1$1.class */
    public static final class C23401 extends ContinuationImpl {

        /* renamed from: f */
        /* synthetic */ Object f23029f;

        /* renamed from: g */
        int f23030g;

        /* renamed from: h */
        final /* synthetic */ FlowKt__MigrationKt$combineLatest$$inlined$combine$1 f23031h;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f23029f = obj;
            this.f23030g |= Integer.MIN_VALUE;
            return this.f23031h.mo589a(null, this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0011\n\u0002\b\u0007\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "R", "invoke", "()[Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$1$lambda$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$1$2"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combineLatest$$inlined$combine$1$2 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$1$2.class */
    public static final class C23412 extends Lambda implements Function0<Object[]> {
        public C23412() {
            super(0);
        }

        @NotNull
        /* renamed from: b */
        public final Object[] invoke() {
            return new Object[FlowKt__MigrationKt$combineLatest$$inlined$combine$1.this.f23027a.length];
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0005\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$2", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$1$lambda$2", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$1$3"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$combineLatest$$inlined$combine$1$3", m1914f = "Migration.kt", m1913l = {StatusLine.HTTP_TEMP_REDIRECT, StatusLine.HTTP_TEMP_REDIRECT}, m1912m = "invokeSuspend")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combineLatest$$inlined$combine$1$3 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combineLatest$$inlined$combine$1$3.class */
    public static final class C23423 extends SuspendLambda implements Function3<FlowCollector<? super R>, Object[], Continuation<? super Unit>, Object> {

        /* renamed from: g */
        private FlowCollector f23033g;

        /* renamed from: h */
        private Object[] f23034h;

        /* renamed from: i */
        Object f23035i;

        /* renamed from: j */
        Object f23036j;

        /* renamed from: k */
        Object f23037k;

        /* renamed from: l */
        int f23038l;

        /* renamed from: m */
        Object f23039m;

        /* renamed from: n */
        Object f23040n;

        /* renamed from: o */
        final /* synthetic */ FlowKt__MigrationKt$combineLatest$$inlined$combine$1 f23041o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C23423(Continuation continuation, FlowKt__MigrationKt$combineLatest$$inlined$combine$1 flowKt__MigrationKt$combineLatest$$inlined$combine$1) {
            super(3, continuation);
            this.f23041o = flowKt__MigrationKt$combineLatest$$inlined$combine$1;
        }

        @Override // kotlin.jvm.functions.Function3
        /* renamed from: a */
        public final Object mo594a(Object obj, Object[] objArr, Continuation<? super Unit> continuation) {
            return ((C23423) m685d((FlowCollector) obj, objArr, continuation)).invokeSuspend(Unit.f20447a);
        }

        @NotNull
        /* renamed from: d */
        public final Continuation<Unit> m685d(@NotNull FlowCollector<? super R> flowCollector, @NotNull Object[] objArr, @NotNull Continuation<? super Unit> continuation) {
            C23423 r0 = new C23423(continuation, this.f23041o);
            r0.f23033g = flowCollector;
            r0.f23034h = objArr;
            return r0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object d;
            Object obj2;
            FlowCollector flowCollector;
            FlowCollector flowCollector2;
            Object[] objArr;
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            int i = this.f23038l;
            if (i == 0) {
                ResultKt.m2472b(obj);
                FlowCollector flowCollector3 = this.f23033g;
                Object[] objArr2 = this.f23034h;
                Function4 function4 = this.f23041o.f23028b;
                Object obj3 = objArr2[0];
                Object obj4 = objArr2[1];
                Object obj5 = objArr2[2];
                this.f23035i = flowCollector3;
                this.f23036j = objArr2;
                this.f23037k = flowCollector3;
                this.f23039m = this;
                this.f23040n = objArr2;
                this.f23038l = 1;
                obj2 = function4.mo643h(obj3, obj4, obj5, this);
                if (obj2 == d) {
                    return d;
                }
                flowCollector = flowCollector3;
                objArr = objArr2;
                flowCollector2 = flowCollector3;
            } else if (i == 1) {
                Object[] objArr3 = (Object[]) this.f23040n;
                Continuation continuation = (Continuation) this.f23039m;
                flowCollector2 = (FlowCollector) this.f23037k;
                objArr = (Object[]) this.f23036j;
                flowCollector = (FlowCollector) this.f23035i;
                ResultKt.m2472b(obj);
                obj2 = obj;
            } else if (i == 2) {
                Object[] objArr4 = (Object[]) this.f23036j;
                FlowCollector flowCollector4 = (FlowCollector) this.f23035i;
                ResultKt.m2472b(obj);
                return Unit.f20447a;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this.f23035i = flowCollector;
            this.f23036j = objArr;
            this.f23038l = 2;
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
        Object e = CombineKt.m608e(flowCollector, this.f23027a, new C23412(), new C23423(null, this), continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return e == d ? e : Unit.f20447a;
    }
}
