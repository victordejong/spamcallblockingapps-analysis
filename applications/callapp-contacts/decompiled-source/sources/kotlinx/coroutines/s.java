package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.c.d;
import kotlin.jvm.internal.p;
import kotlin.v;
import kotlinx.coroutines.internal.e;
import kotlinx.coroutines.internal.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\b��\u0018��2\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0096\u0002R\u0014\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/ChildContinuation;", "Lkotlinx/coroutines/JobCancellingNode;", "child", "Lkotlinx/coroutines/CancellableContinuationImpl;", "(Lkotlinx/coroutines/CancellableContinuationImpl;)V", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/s.class */
public final class s extends bw {

    /* renamed from: a  reason: collision with root package name */
    public final o<?> f38858a;

    public s(o<?> oVar) {
        this.f38858a = oVar;
    }

    @Override // kotlinx.coroutines.ab
    public final void a(Throwable th) {
        o<?> oVar = this.f38858a;
        Throwable a2 = oVar.a((bv) c());
        boolean z = true;
        if (ay.b(oVar.f38696b)) {
            d<?> dVar = oVar.f38854a;
            d<?> dVar2 = dVar;
            if (!(dVar instanceof e)) {
                dVar2 = null;
            }
            e eVar = (e) dVar2;
            if (eVar != null) {
                while (true) {
                    Object obj = eVar._reusableCancellableContinuation;
                    if (!p.a(obj, f.f38810a)) {
                        if (obj instanceof Throwable) {
                            break;
                        } else if (e.f38807d.compareAndSet(eVar, obj, null)) {
                            break;
                        }
                    } else if (e.f38807d.compareAndSet(eVar, f.f38810a, a2)) {
                        break;
                    }
                }
            }
        }
        z = false;
        if (!z) {
            oVar.b(a2);
            oVar.h();
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ v invoke(Throwable th) {
        a(th);
        return v.f38654a;
    }
}
