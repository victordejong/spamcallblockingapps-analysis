package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.o;
import kotlin.p;
import kotlin.v;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0002\u0010\u0005J\u0013\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0096\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/ResumeAwaitOnCompletion;", "T", "Lkotlinx/coroutines/JobNode;", "continuation", "Lkotlinx/coroutines/CancellableContinuationImpl;", "(Lkotlinx/coroutines/CancellableContinuationImpl;)V", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/cj.class */
public final class cj<T> extends bz {

    /* renamed from: a  reason: collision with root package name */
    private final o<T> f38781a;

    /* JADX WARN: Multi-variable type inference failed */
    public cj(o<? super T> oVar) {
        this.f38781a = oVar;
    }

    @Override // kotlinx.coroutines.ab
    public final void a(Throwable th) {
        Object p = c().p();
        if (ao.a() && !(!(p instanceof bq))) {
            throw new AssertionError();
        } else if (p instanceof z) {
            o<T> oVar = this.f38781a;
            Throwable th2 = ((z) p).f38868b;
            o.a aVar = o.f36812a;
            oVar.b(o.d(p.a(th2)));
        } else {
            o<T> oVar2 = this.f38781a;
            Object b2 = cb.b(p);
            o.a aVar2 = o.f36812a;
            oVar2.b(o.d(b2));
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ v invoke(Throwable th) {
        a(th);
        return v.f38654a;
    }
}
