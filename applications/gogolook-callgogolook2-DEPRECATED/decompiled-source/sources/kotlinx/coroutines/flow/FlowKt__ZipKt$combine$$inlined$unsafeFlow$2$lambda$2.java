package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p643d.C15148j;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$2$lambda$2", m472f = "Zip.kt", m471l = {251}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$2"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$2$lambda$2.class */
public final class FlowKt__ZipKt$combine$$inlined$unsafeFlow$2$lambda$2 extends AbstractC15078m implements AbstractC15123q<FlowCollector<? super R>, T[], AbstractC15044d<? super C14989s>, Object> {
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public int label;

    /* renamed from: p$ */
    public FlowCollector f32893p$;
    public Object[] p$0;
    public final /* synthetic */ FlowKt__ZipKt$combine$$inlined$unsafeFlow$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combine$$inlined$unsafeFlow$2$lambda$2(AbstractC15044d dVar, FlowKt__ZipKt$combine$$inlined$unsafeFlow$2 flowKt__ZipKt$combine$$inlined$unsafeFlow$2) {
        super(3, dVar);
        this.this$0 = flowKt__ZipKt$combine$$inlined$unsafeFlow$2;
    }

    public final AbstractC15044d<C14989s> create(FlowCollector<? super R> flowCollector, T[] tArr, AbstractC15044d<? super C14989s> dVar) {
        FlowKt__ZipKt$combine$$inlined$unsafeFlow$2$lambda$2 flowKt__ZipKt$combine$$inlined$unsafeFlow$2$lambda$2 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$2$lambda$2(dVar, this.this$0);
        flowKt__ZipKt$combine$$inlined$unsafeFlow$2$lambda$2.f32893p$ = flowCollector;
        flowKt__ZipKt$combine$$inlined$unsafeFlow$2$lambda$2.p$0 = tArr;
        return flowKt__ZipKt$combine$$inlined$unsafeFlow$2$lambda$2;
    }

    @Override // p626l.p641z.p642c.AbstractC15123q
    public final Object invoke(Object obj, Object obj2, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowKt__ZipKt$combine$$inlined$unsafeFlow$2$lambda$2) create((FlowCollector) obj, (Object[]) obj2, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            FlowCollector flowCollector = this.f32893p$;
            Object[] objArr = this.p$0;
            Object invoke = this.this$0.$transform$inlined.invoke(objArr, this);
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
        FlowCollector flowCollector = this.f32893p$;
        Object invoke = this.this$0.$transform$inlined.invoke(this.p$0, this);
        C15148j.m388c(0);
        flowCollector.emit(invoke, this);
        C15148j.m388c(2);
        C15148j.m388c(1);
        return C14989s.f33022a;
    }
}
