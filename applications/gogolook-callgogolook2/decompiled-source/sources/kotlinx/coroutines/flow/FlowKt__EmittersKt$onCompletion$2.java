package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$2", m472f = "Emitters.kt", m471l = {168}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$2.class */
public final class FlowKt__EmittersKt$onCompletion$2 extends AbstractC15078m implements AbstractC15123q<FlowCollector<? super T>, Throwable, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ AbstractC15122p $action;
    public Object L$0;
    public Object L$1;
    public int label;

    /* renamed from: p$ */
    public FlowCollector f32870p$;
    public Throwable p$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__EmittersKt$onCompletion$2(AbstractC15122p pVar, AbstractC15044d dVar) {
        super(3, dVar);
        this.$action = pVar;
    }

    public final AbstractC15044d<C14989s> create(FlowCollector<? super T> flowCollector, Throwable th, AbstractC15044d<? super C14989s> dVar) {
        FlowKt__EmittersKt$onCompletion$2 flowKt__EmittersKt$onCompletion$2 = new FlowKt__EmittersKt$onCompletion$2(this.$action, dVar);
        flowKt__EmittersKt$onCompletion$2.f32870p$ = flowCollector;
        flowKt__EmittersKt$onCompletion$2.p$0 = th;
        return flowKt__EmittersKt$onCompletion$2;
    }

    @Override // p626l.p641z.p642c.AbstractC15123q
    public final Object invoke(Object obj, Throwable th, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowKt__EmittersKt$onCompletion$2) create((FlowCollector) obj, th, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            FlowCollector flowCollector = this.f32870p$;
            Throwable th = this.p$0;
            AbstractC15122p pVar = this.$action;
            this.L$0 = flowCollector;
            this.L$1 = th;
            this.label = 1;
            if (pVar.invoke(th, this) == a) {
                return a;
            }
        } else if (i == 1) {
            Throwable th2 = (Throwable) this.L$1;
            FlowCollector flowCollector2 = (FlowCollector) this.L$0;
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return C14989s.f33022a;
    }
}
