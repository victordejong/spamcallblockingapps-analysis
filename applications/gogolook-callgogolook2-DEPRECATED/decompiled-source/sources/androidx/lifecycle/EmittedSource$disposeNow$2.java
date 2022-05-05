package androidx.lifecycle;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@AbstractC15070f(m473c = "androidx.lifecycle.EmittedSource$disposeNow$2", m472f = "CoroutineLiveData.kt", m471l = {}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/EmittedSource$disposeNow$2.class */
public final class EmittedSource$disposeNow$2 extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {
    public int label;

    /* renamed from: p$ */
    public CoroutineScope f67p$;
    public final /* synthetic */ EmittedSource this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmittedSource$disposeNow$2(EmittedSource emittedSource, AbstractC15044d dVar) {
        super(2, dVar);
        this.this$0 = emittedSource;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        C15149k.m377b(dVar, "completion");
        EmittedSource$disposeNow$2 emittedSource$disposeNow$2 = new EmittedSource$disposeNow$2(this.this$0, dVar);
        emittedSource$disposeNow$2.f67p$ = (CoroutineScope) obj;
        return emittedSource$disposeNow$2;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
        return ((EmittedSource$disposeNow$2) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        C15064c.m478a();
        if (this.label == 0) {
            C14982l.m653a(obj);
            this.this$0.removeSource();
            return C14989s.f33022a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
