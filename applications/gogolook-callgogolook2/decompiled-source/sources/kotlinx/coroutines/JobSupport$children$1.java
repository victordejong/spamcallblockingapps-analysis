package kotlinx.coroutines;

import kotlin.Metadata;
import p626l.C14989s;
import p626l.p630d0.AbstractC14923g;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15076k;
import p626l.p641z.p642c.AbstractC15122p;
@AbstractC15070f(m473c = "kotlinx.coroutines.JobSupport$children$1", m472f = "JobSupport.kt", m471l = {949, 951}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Lkotlinx/coroutines/ChildJob;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/JobSupport$children$1.class */
public final class JobSupport$children$1 extends AbstractC15076k implements AbstractC15122p<AbstractC14923g<? super ChildJob>, AbstractC15044d<? super C14989s>, Object> {
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public int label;

    /* renamed from: p$ */
    public AbstractC14923g f32845p$;
    public final /* synthetic */ JobSupport this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobSupport$children$1(JobSupport jobSupport, AbstractC15044d dVar) {
        super(2, dVar);
        this.this$0 = jobSupport;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1(this.this$0, dVar);
        jobSupport$children$1.f32845p$ = (AbstractC14923g) obj;
        return jobSupport$children$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(AbstractC14923g<? super ChildJob> gVar, AbstractC15044d<? super C14989s> dVar) {
        return ((JobSupport$children$1) create(gVar, dVar)).invokeSuspend(C14989s.f33022a);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00ea  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0105 -> B:33:0x016a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0165 -> B:33:0x016a). Please submit an issue!!! */
    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport$children$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
