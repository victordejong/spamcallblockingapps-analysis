package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.flow.internal.CombineKt;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p642c.AbstractC15124r;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, m815d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$1"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$1.class */
public final class FlowKt__MigrationKt$combine$$inlined$combine$1 implements Flow<R> {
    public final /* synthetic */ Flow[] $flows$inlined;
    public final /* synthetic */ AbstractC15124r $transform$inlined$1;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��J\n��\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0005\n\u0002\b\u0005\n\u0002\b\u0005\n\u0002\b\u0005\n\u0002\b\u0006\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "invoke", "()[Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$1", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$1$lambda$1"}, m814k = 3, m813mv = {1, 1, 16})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combine$$inlined$combine$1$2 */
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$1$2.class */
    public static final class C147622 extends AbstractC15150l implements AbstractC15107a<Object[]> {
        public C147622() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Object[] invoke() {
            return new Object[FlowKt__MigrationKt$combine$$inlined$combine$1.this.$flows$inlined.length];
        }
    }

    @AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$combine$$inlined$combine$1$3", m472f = "Zip.kt", m471l = {323}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$2", "kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$unsafeFlow$1$lambda$2"}, m814k = 3, m813mv = {1, 1, 16})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__MigrationKt$combine$$inlined$combine$1$3 */
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$combine$$inlined$combine$1$3.class */
    public static final class C147633 extends AbstractC15078m implements AbstractC15123q<FlowCollector<? super R>, Object[], AbstractC15044d<? super C14989s>, Object> {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;

        /* renamed from: p$ */
        public FlowCollector f32877p$;
        public Object[] p$0;
        public final /* synthetic */ FlowKt__MigrationKt$combine$$inlined$combine$1 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C147633(AbstractC15044d dVar, FlowKt__MigrationKt$combine$$inlined$combine$1 flowKt__MigrationKt$combine$$inlined$combine$1) {
            super(3, dVar);
            this.this$0 = flowKt__MigrationKt$combine$$inlined$combine$1;
        }

        public final AbstractC15044d<C14989s> create(FlowCollector<? super R> flowCollector, Object[] objArr, AbstractC15044d<? super C14989s> dVar) {
            C147633 r0 = new C147633(dVar, this.this$0);
            r0.f32877p$ = flowCollector;
            r0.p$0 = objArr;
            return r0;
        }

        @Override // p626l.p641z.p642c.AbstractC15123q
        public final Object invoke(Object obj, Object[] objArr, AbstractC15044d<? super C14989s> dVar) {
            return ((C147633) create((FlowCollector) obj, objArr, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.label;
            if (i == 0) {
                C14982l.m653a(obj);
                FlowCollector flowCollector = this.f32877p$;
                Object[] objArr = this.p$0;
                Object invoke = this.this$0.$transform$inlined$1.invoke(objArr[0], objArr[1], objArr[2], this);
                this.L$0 = flowCollector;
                this.L$1 = objArr;
                this.label = 1;
                if (flowCollector.emit(invoke, this) == a) {
                    return a;
                }
            } else if (i == 1) {
                Object[] objArr2 = (Object[]) this.L$1;
                FlowCollector flowCollector2 = (FlowCollector) this.L$0;
                C14982l.m653a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return C14989s.f33022a;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            FlowCollector flowCollector = this.f32877p$;
            Object[] objArr = this.p$0;
            Object invoke = this.this$0.$transform$inlined$1.invoke(objArr[0], objArr[1], objArr[2], this);
            C15148j.m388c(0);
            flowCollector.emit(invoke, this);
            C15148j.m388c(2);
            C15148j.m388c(1);
            return C14989s.f33022a;
        }
    }

    public FlowKt__MigrationKt$combine$$inlined$combine$1(Flow[] flowArr, AbstractC15124r rVar) {
        this.$flows$inlined = flowArr;
        this.$transform$inlined$1 = rVar;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector flowCollector, AbstractC15044d dVar) {
        Object combineInternal = CombineKt.combineInternal(flowCollector, this.$flows$inlined, new C147622(), new C147633(null, this), dVar);
        return combineInternal == C15064c.m478a() ? combineInternal : C14989s.f33022a;
    }

    public Object collect$$forInline(FlowCollector flowCollector, AbstractC15044d dVar) {
        C15148j.m388c(4);
        new AbstractC15068d(dVar) { // from class: kotlinx.coroutines.flow.FlowKt__MigrationKt$combine$$inlined$combine$1.1
            public int label;
            public /* synthetic */ Object result;

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return FlowKt__MigrationKt$combine$$inlined$combine$1.this.collect(null, this);
            }
        };
        C15148j.m388c(5);
        Flow[] flowArr = this.$flows$inlined;
        C147622 r0 = new C147622();
        C147633 r02 = new C147633(null, this);
        C15148j.m388c(0);
        CombineKt.combineInternal(flowCollector, flowArr, r0, r02, dVar);
        C15148j.m388c(2);
        C15148j.m388c(1);
        return C14989s.f33022a;
    }
}
