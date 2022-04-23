package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.internal.CombineKt;
import okhttp3.internal.http.StatusLine;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2", m1914f = "Zip.kt", m1913l = {253}, m1912m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2.class */
public final class FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2 extends SuspendLambda implements Function2<FlowCollector<? super R>, Continuation<? super Unit>, Object> {

    /* renamed from: g */
    private FlowCollector f23548g;

    /* renamed from: h */
    Object f23549h;

    /* renamed from: i */
    int f23550i;

    /* renamed from: j */
    final /* synthetic */ Flow[] f23551j;

    /* renamed from: k */
    final /* synthetic */ Function5 f23552k;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0011\n\u0002\b\u0005\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"<anonymous>", "", "T", "R", "invoke", "()[Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2$1 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2$1.class */
    public static final class C24141 extends Lambda implements Function0<Object[]> {
        public C24141() {
            super(0);
        }

        @NotNull
        /* renamed from: b */
        public final Object[] invoke() {
            return new Object[FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2.this.f23551j.length];
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"<anonymous>", "", "T", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6$2"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    @DebugMetadata(m1915c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2$2", m1914f = "Zip.kt", m1913l = {StatusLine.HTTP_TEMP_REDIRECT}, m1912m = "invokeSuspend")
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2$2 */
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2$2.class */
    public static final class C24152 extends SuspendLambda implements Function3<FlowCollector<? super R>, Object[], Continuation<? super Unit>, Object> {

        /* renamed from: g */
        private FlowCollector f23554g;

        /* renamed from: h */
        private Object[] f23555h;

        /* renamed from: i */
        Object f23556i;

        /* renamed from: j */
        Object f23557j;

        /* renamed from: k */
        int f23558k;

        /* renamed from: m */
        Object f23560m;

        /* renamed from: n */
        Object f23561n;

        /* renamed from: o */
        Object f23562o;

        public C24152(Continuation continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        /* renamed from: a */
        public final Object mo594a(Object obj, Object[] objArr, Continuation<? super Unit> continuation) {
            return ((C24152) m649d((FlowCollector) obj, objArr, continuation)).invokeSuspend(Unit.f20447a);
        }

        @NotNull
        /* renamed from: d */
        public final Continuation<Unit> m649d(@NotNull FlowCollector<? super R> flowCollector, @NotNull Object[] objArr, @NotNull Continuation<? super Unit> continuation) {
            C24152 r0 = new C24152(continuation);
            r0.f23554g = flowCollector;
            r0.f23555h = objArr;
            return r0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object d;
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            int i = this.f23558k;
            if (i == 0) {
                ResultKt.m2472b(obj);
                FlowCollector flowCollector = this.f23554g;
                Object[] objArr = this.f23555h;
                Function5 function5 = FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2.this.f23552k;
                Object obj2 = objArr[0];
                Object obj3 = objArr[1];
                Object obj4 = objArr[2];
                this.f23556i = flowCollector;
                this.f23557j = objArr;
                this.f23560m = this;
                this.f23561n = objArr;
                this.f23562o = flowCollector;
                this.f23558k = 1;
                if (function5.mo1840t(flowCollector, obj2, obj3, obj4, this) == d) {
                    return d;
                }
            } else if (i == 1) {
                FlowCollector flowCollector2 = (FlowCollector) this.f23562o;
                Object[] objArr2 = (Object[]) this.f23561n;
                Continuation continuation = (Continuation) this.f23560m;
                Object[] objArr3 = (Object[]) this.f23557j;
                FlowCollector flowCollector3 = (FlowCollector) this.f23556i;
                ResultKt.m2472b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.f20447a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2(Flow[] flowArr, Continuation continuation, Function5 function5) {
        super(2, continuation);
        this.f23551j = flowArr;
        this.f23552k = function5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2 flowKt__ZipKt$combineTransform$$inlined$combineTransform$2 = new FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2(this.f23551j, continuation, this.f23552k);
        flowKt__ZipKt$combineTransform$$inlined$combineTransform$2.f23548g = (FlowCollector) obj;
        return flowKt__ZipKt$combineTransform$$inlined$combineTransform$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d;
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        int i = this.f23550i;
        if (i == 0) {
            ResultKt.m2472b(obj);
            FlowCollector flowCollector = this.f23548g;
            Flow[] flowArr = this.f23551j;
            C24141 r0 = new C24141();
            C24152 r02 = new C24152(null);
            this.f23549h = flowCollector;
            this.f23550i = 1;
            if (CombineKt.m608e(flowCollector, flowArr, r0, r02, this) == d) {
                return d;
            }
        } else if (i == 1) {
            FlowCollector flowCollector2 = (FlowCollector) this.f23549h;
            ResultKt.m2472b(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.f20447a;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public final Object mo422o(Object obj, Continuation<? super Unit> continuation) {
        return ((FlowKt__ZipKt$combineTransform$$inlined$combineTransform$2) create(obj, continuation)).invokeSuspend(Unit.f20447a);
    }
}
