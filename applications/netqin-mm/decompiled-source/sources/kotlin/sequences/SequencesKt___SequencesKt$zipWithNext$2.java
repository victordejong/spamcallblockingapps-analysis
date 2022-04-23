package kotlin.sequences;

import java.util.Iterator;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import p573f.C9927e;
import p573f.C9946p;
import p573f.p575b0.AbstractC9896b;
import p573f.p575b0.AbstractC9897c;
import p573f.p579t.AbstractC9993a;
import p573f.p579t.p584d.C10006b;
import p573f.p579t.p585e.p586a.AbstractC10009c;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
@AbstractC10009c(m1683c = "kotlin.sequences.SequencesKt___SequencesKt$zipWithNext$2", m1682f = "_Sequences.kt", m1681l = {1702}, m1680m = "invokeSuspend")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$zipWithNext$2.class */
public final class SequencesKt___SequencesKt$zipWithNext$2 extends RestrictedSuspendLambda implements AbstractC10035p<AbstractC9897c<? super R>, AbstractC9993a<? super C9946p>, Object> {
    public final /* synthetic */ AbstractC9896b $this_zipWithNext;
    public final /* synthetic */ AbstractC10035p $transform;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;

    /* renamed from: p$ */
    public AbstractC9897c f38754p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$zipWithNext$2(AbstractC9896b bVar, AbstractC10035p pVar, AbstractC9993a aVar) {
        super(2, aVar);
        this.$this_zipWithNext = bVar;
        this.$transform = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final AbstractC9993a<C9946p> create(Object obj, AbstractC9993a<?> aVar) {
        C10059q.m1637b(aVar, "completion");
        SequencesKt___SequencesKt$zipWithNext$2 sequencesKt___SequencesKt$zipWithNext$2 = new SequencesKt___SequencesKt$zipWithNext$2(this.$this_zipWithNext, this.$transform, aVar);
        sequencesKt___SequencesKt$zipWithNext$2.f38754p$ = (AbstractC9897c) obj;
        return sequencesKt___SequencesKt$zipWithNext$2;
    }

    @Override // p573f.p590w.p591b.AbstractC10035p
    public final Object invoke(Object obj, AbstractC9993a<? super C9946p> aVar) {
        return ((SequencesKt___SequencesKt$zipWithNext$2) create(obj, aVar)).invokeSuspend(C9946p.f37137a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC9897c cVar;
        Iterator it;
        Object obj2;
        Object a = C10006b.m1684a();
        int i = this.label;
        if (i == 0) {
            C9927e.m1779a(obj);
            cVar = this.f38754p$;
            it = this.$this_zipWithNext.iterator();
            if (!it.hasNext()) {
                return C9946p.f37137a;
            }
            obj2 = it.next();
        } else if (i == 1) {
            obj2 = this.L$3;
            it = (Iterator) this.L$1;
            cVar = (AbstractC9897c) this.L$0;
            C9927e.m1779a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (it.hasNext()) {
            Object next = it.next();
            Object invoke = this.$transform.invoke(obj2, next);
            this.L$0 = cVar;
            this.L$1 = it;
            this.L$2 = obj2;
            this.L$3 = next;
            this.label = 1;
            if (cVar.m1814a((AbstractC9897c) invoke, (AbstractC9993a<? super C9946p>) this) == a) {
                return a;
            }
            obj2 = next;
        }
        return C9946p.f37137a;
    }
}
