package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.flow.internal.CombineKt;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p642c.AbstractC15126t;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15148j;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3", m472f = "Zip.kt", m471l = {265}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3.class */
public final class FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3 extends AbstractC15078m implements AbstractC15122p<FlowCollector<? super R>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ Flow[] $flows;
    public final /* synthetic */ AbstractC15126t $transform$inlined;
    public Object L$0;
    public int label;

    /* renamed from: p$ */
    public FlowCollector f32902p$;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n��\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0005\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "invoke", "()[Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6$1"}, m814k = 3, m813mv = {1, 1, 16})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3$1 */
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3$1.class */
    public static final class C148491 extends AbstractC15150l implements AbstractC15107a<Object[]> {
        public C148491() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Object[] invoke() {
            return new Object[FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3.this.$flows.length];
        }
    }

    @AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3$2", m472f = "Zip.kt", m471l = {}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6$2"}, m814k = 3, m813mv = {1, 1, 16})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3$2 */
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3$2.class */
    public static final class C148502 extends AbstractC15078m implements AbstractC15123q<FlowCollector<? super R>, Object[], AbstractC15044d<? super C14989s>, Object> {
        public Object L$0;
        public Object L$1;
        public int label;

        /* renamed from: p$ */
        public FlowCollector f32903p$;
        public Object[] p$0;

        public C148502(AbstractC15044d dVar) {
            super(3, dVar);
        }

        public final AbstractC15044d<C14989s> create(FlowCollector<? super R> flowCollector, Object[] objArr, AbstractC15044d<? super C14989s> dVar) {
            C148502 r0 = new C148502(dVar);
            r0.f32903p$ = flowCollector;
            r0.p$0 = objArr;
            return r0;
        }

        @Override // p626l.p641z.p642c.AbstractC15123q
        public final Object invoke(Object obj, Object[] objArr, AbstractC15044d<? super C14989s> dVar) {
            return ((C148502) create((FlowCollector) obj, objArr, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.label == 0) {
                C14982l.m653a(obj);
                FlowCollector flowCollector = this.f32903p$;
                Object[] objArr = this.p$0;
                FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3.this.$transform$inlined.m421a(flowCollector, objArr[0], objArr[1], objArr[2], objArr[3], this);
                return C14989s.f33022a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            FlowCollector flowCollector = this.f32903p$;
            Object[] objArr = this.p$0;
            FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3.this.$transform$inlined.m421a(flowCollector, objArr[0], objArr[1], objArr[2], objArr[3], this);
            return C14989s.f33022a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3(Flow[] flowArr, AbstractC15044d dVar, AbstractC15126t tVar) {
        super(2, dVar);
        this.$flows = flowArr;
        this.$transform$inlined = tVar;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3 flowKt__ZipKt$combineTransform$$inlined$combineTransform$3 = new FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3(this.$flows, dVar, this.$transform$inlined);
        flowKt__ZipKt$combineTransform$$inlined$combineTransform$3.f32902p$ = (FlowCollector) obj;
        return flowKt__ZipKt$combineTransform$$inlined$combineTransform$3;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowKt__ZipKt$combineTransform$$inlined$combineTransform$3) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            FlowCollector flowCollector = this.f32902p$;
            Flow[] flowArr = this.$flows;
            C148491 r0 = new C148491();
            C148502 r02 = new C148502(null);
            this.L$0 = flowCollector;
            this.label = 1;
            if (CombineKt.combineInternal(flowCollector, flowArr, r0, r02, this) == a) {
                return a;
            }
        } else if (i == 1) {
            FlowCollector flowCollector2 = (FlowCollector) this.L$0;
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return C14989s.f33022a;
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        FlowCollector flowCollector = this.f32902p$;
        Flow[] flowArr = this.$flows;
        C148491 r0 = new C148491();
        C148502 r02 = new C148502(null);
        C15148j.m388c(0);
        CombineKt.combineInternal(flowCollector, flowArr, r0, r02, this);
        C15148j.m388c(2);
        C15148j.m388c(1);
        return C14989s.f33022a;
    }
}
