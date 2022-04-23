package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15124r;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$6", m472f = "Errors.kt", m471l = {}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\t\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u008a@¢\u0006\u0004\b\b\u0010\t"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "cause", "", "attempt", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ErrorsKt$retry$6.class */
public final class FlowKt__ErrorsKt$retry$6 extends AbstractC15078m implements AbstractC15124r<FlowCollector<? super T>, Throwable, Long, AbstractC15044d<? super Boolean>, Object> {
    public final /* synthetic */ AbstractC15118l $predicate;
    public final /* synthetic */ int $retries;
    public int label;

    /* renamed from: p$ */
    public FlowCollector f32874p$;
    public Throwable p$0;
    public long p$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ErrorsKt$retry$6(int i, AbstractC15118l lVar, AbstractC15044d dVar) {
        super(4, dVar);
        this.$retries = i;
        this.$predicate = lVar;
    }

    public final AbstractC15044d<C14989s> create(FlowCollector<? super T> flowCollector, Throwable th, long j, AbstractC15044d<? super Boolean> dVar) {
        FlowKt__ErrorsKt$retry$6 flowKt__ErrorsKt$retry$6 = new FlowKt__ErrorsKt$retry$6(this.$retries, this.$predicate, dVar);
        flowKt__ErrorsKt$retry$6.f32874p$ = flowCollector;
        flowKt__ErrorsKt$retry$6.p$0 = th;
        flowKt__ErrorsKt$retry$6.p$1 = j;
        return flowKt__ErrorsKt$retry$6;
    }

    @Override // p626l.p641z.p642c.AbstractC15124r
    public final Object invoke(Object obj, Throwable th, Long l, AbstractC15044d<? super Boolean> dVar) {
        return ((FlowKt__ErrorsKt$retry$6) create((FlowCollector) obj, th, l.longValue(), dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        C15064c.m478a();
        if (this.label == 0) {
            C14982l.m653a(obj);
            return C15066b.m474a(((Boolean) this.$predicate.invoke(this.p$0)).booleanValue() && this.p$1 < ((long) this.$retries));
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
