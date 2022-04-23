package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlinx.coroutines.flow.internal.CombineKt;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15124r;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$1", m472f = "Zip.kt", m471l = {82}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, m815d2 = {"<anonymous>", "", "T1", "T2", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$1.class */
public final class FlowKt__ZipKt$combineTransform$1 extends AbstractC15078m implements AbstractC15122p<FlowCollector<? super R>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ Flow $flow;
    public final /* synthetic */ Flow $this_combineTransform;
    public final /* synthetic */ AbstractC15124r $transform;
    public Object L$0;
    public int label;

    /* renamed from: p$ */
    public FlowCollector f32906p$;

    @AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$1$1", m472f = "Zip.kt", m471l = {83}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u0002H\u00022\u0006\u0010\u0007\u001a\u0002H\u0003H\u008a@¢\u0006\u0004\b\b\u0010\t"}, m815d2 = {"<anonymous>", "", "T1", "T2", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "a", "b", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$1$1 */
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$1$1.class */
    public static final class C148531 extends AbstractC15078m implements AbstractC15124r<FlowCollector<? super R>, T1, T2, AbstractC15044d<? super C14989s>, Object> {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;

        /* renamed from: p$ */
        public FlowCollector f32907p$;
        public Object p$0;
        public Object p$1;

        public C148531(AbstractC15044d dVar) {
            super(4, dVar);
        }

        public final AbstractC15044d<C14989s> create(FlowCollector<? super R> flowCollector, T1 t1, T2 t2, AbstractC15044d<? super C14989s> dVar) {
            C148531 r0 = new C148531(dVar);
            r0.f32907p$ = flowCollector;
            r0.p$0 = t1;
            r0.p$1 = t2;
            return r0;
        }

        @Override // p626l.p641z.p642c.AbstractC15124r
        public final Object invoke(Object obj, Object obj2, Object obj3, AbstractC15044d<? super C14989s> dVar) {
            return ((C148531) create((FlowCollector) obj, obj2, obj3, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.label;
            if (i == 0) {
                C14982l.m653a(obj);
                FlowCollector flowCollector = this.f32907p$;
                Object obj2 = this.p$0;
                Object obj3 = this.p$1;
                AbstractC15124r rVar = FlowKt__ZipKt$combineTransform$1.this.$transform;
                this.L$0 = flowCollector;
                this.L$1 = obj2;
                this.L$2 = obj3;
                this.label = 1;
                if (rVar.invoke(flowCollector, obj2, obj3, this) == a) {
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
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combineTransform$1(Flow flow, Flow flow2, AbstractC15124r rVar, AbstractC15044d dVar) {
        super(2, dVar);
        this.$this_combineTransform = flow;
        this.$flow = flow2;
        this.$transform = rVar;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        FlowKt__ZipKt$combineTransform$1 flowKt__ZipKt$combineTransform$1 = new FlowKt__ZipKt$combineTransform$1(this.$this_combineTransform, this.$flow, this.$transform, dVar);
        flowKt__ZipKt$combineTransform$1.f32906p$ = (FlowCollector) obj;
        return flowKt__ZipKt$combineTransform$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowKt__ZipKt$combineTransform$1) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            FlowCollector flowCollector = this.f32906p$;
            Flow flow = this.$this_combineTransform;
            Flow flow2 = this.$flow;
            C148531 r0 = new C148531(null);
            this.L$0 = flowCollector;
            this.label = 1;
            if (CombineKt.combineTransformInternal(flowCollector, flow, flow2, r0, this) == a) {
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
}
