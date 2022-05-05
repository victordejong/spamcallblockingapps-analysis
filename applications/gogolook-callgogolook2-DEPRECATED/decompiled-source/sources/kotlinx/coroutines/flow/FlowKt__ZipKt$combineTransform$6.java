package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6", m472f = "Zip.kt", m471l = {265}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6.class */
public final class FlowKt__ZipKt$combineTransform$6 extends AbstractC15078m implements AbstractC15122p<FlowCollector<? super R>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ Flow[] $flows;
    public final /* synthetic */ AbstractC15123q $transform;
    public Object L$0;
    public int label;

    /* renamed from: p$ */
    public FlowCollector f32908p$;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0010\u0011\n\u0002\b\u0004\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "invoke", "()[Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6$1 */
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6$1.class */
    public static final class C148541 extends AbstractC15150l implements AbstractC15107a<T[]> {
        public C148541() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final T[] invoke() {
            int length = FlowKt__ZipKt$combineTransform$6.this.$flows.length;
            C15149k.m385a(0, "T?");
            throw null;
        }
    }

    @AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6$2", m472f = "Zip.kt", m471l = {265}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6$2 */
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$6$2.class */
    public static final class C148552 extends AbstractC15078m implements AbstractC15123q<FlowCollector<? super R>, T[], AbstractC15044d<? super C14989s>, Object> {
        public Object L$0;
        public Object L$1;
        public int label;

        /* renamed from: p$ */
        public FlowCollector f32909p$;
        public Object[] p$0;

        public C148552(AbstractC15044d dVar) {
            super(3, dVar);
        }

        public final AbstractC15044d<C14989s> create(FlowCollector<? super R> flowCollector, T[] tArr, AbstractC15044d<? super C14989s> dVar) {
            C148552 r0 = new C148552(dVar);
            r0.f32909p$ = flowCollector;
            r0.p$0 = tArr;
            return r0;
        }

        @Override // p626l.p641z.p642c.AbstractC15123q
        public final Object invoke(Object obj, Object obj2, AbstractC15044d<? super C14989s> dVar) {
            return ((C148552) create((FlowCollector) obj, (Object[]) obj2, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.label;
            if (i == 0) {
                C14982l.m653a(obj);
                FlowCollector flowCollector = this.f32909p$;
                Object[] objArr = this.p$0;
                AbstractC15123q qVar = FlowKt__ZipKt$combineTransform$6.this.$transform;
                this.L$0 = flowCollector;
                this.L$1 = objArr;
                this.label = 1;
                if (qVar.invoke(flowCollector, objArr, this) == a) {
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
            FlowKt__ZipKt$combineTransform$6.this.$transform.invoke(this.f32909p$, this.p$0, this);
            return C14989s.f33022a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combineTransform$6(Flow[] flowArr, AbstractC15123q qVar, AbstractC15044d dVar) {
        super(2, dVar);
        this.$flows = flowArr;
        this.$transform = qVar;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        FlowKt__ZipKt$combineTransform$6 flowKt__ZipKt$combineTransform$6 = new FlowKt__ZipKt$combineTransform$6(this.$flows, this.$transform, dVar);
        flowKt__ZipKt$combineTransform$6.f32908p$ = (FlowCollector) obj;
        return flowKt__ZipKt$combineTransform$6;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowKt__ZipKt$combineTransform$6) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            C15149k.m387a();
            throw null;
        } else if (i == 1) {
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            C14982l.m653a(obj);
            return C14989s.f33022a;
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        C15149k.m387a();
        throw null;
    }
}
