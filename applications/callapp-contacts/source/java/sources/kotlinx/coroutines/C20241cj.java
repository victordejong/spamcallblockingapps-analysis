package kotlinx.coroutines;

import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.C20128v;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0002\u0010\u0005J\u0013\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0096\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, m4298d2 = {"Lkotlinx/coroutines/ResumeAwaitOnCompletion;", "T", "Lkotlinx/coroutines/JobNode;", "continuation", "Lkotlinx/coroutines/CancellableContinuationImpl;", "(Lkotlinx/coroutines/CancellableContinuationImpl;)V", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.cj */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/cj.class */
public final class C20241cj<T> extends AbstractC20224bz {

    /* renamed from: a */
    private final C20309o<T> f66697a;

    /* JADX WARN: Multi-variable type inference failed */
    public C20241cj(C20309o<? super T> c20309o) {
        this.f66697a = c20309o;
    }

    @Override // kotlinx.coroutines.AbstractC20136ab
    /* renamed from: a */
    public final void mo768a(Throwable th) {
        Object m935p = m980c().m935p();
        if (!C20159ao.m1083a() || (!(m935p instanceof AbstractC20213bq))) {
            if (m935p instanceof C20322z) {
                C20309o<T> c20309o = this.f66697a;
                Throwable th2 = ((C20322z) m935p).f66802b;
                C18539o.C18540a c18540a = C18539o.f63626a;
                c20309o.mo786b(C18539o.m3836d(C18542p.m3834a(th2)));
                return;
            }
            C20309o<T> c20309o2 = this.f66697a;
            Object m927b = C20233cb.m927b(m935p);
            C18539o.C18540a c18540a2 = C18539o.f63626a;
            c20309o2.mo786b(C18539o.m3836d(m927b));
            return;
        }
        throw new AssertionError();
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ C20128v invoke(Throwable th) {
        mo768a(th);
        return C20128v.f66529a;
    }
}
