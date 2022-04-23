package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import kotlin.Metadata;
import kotlin.c.d;
import kotlin.c.f;
import kotlin.v;
import kotlinx.coroutines.internal.t;
import kotlinx.coroutines.internal.z;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b��\u0018��*\u0006\b��\u0010\u0001 ��2\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006¢\u0006\u0002\u0010\u0007J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\nH\u0014J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0018\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\nR\u0010\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/UndispatchedCoroutine;", "T", "Lkotlinx/coroutines/internal/ScopeCoroutine;", "context", "Lkotlin/coroutines/CoroutineContext;", "uCont", "Lkotlin/coroutines/Continuation;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "savedContext", "savedOldValue", "", "afterResume", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "clearThreadContext", "", "saveThreadContext", "oldValue", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/cs.class */
public final class cs<T> extends t<T> {
    f e;
    Object f;

    public cs(f fVar, d<? super T> dVar) {
        super(fVar.get(ct.f38788a) == null ? fVar.plus(ct.f38788a) : fVar, dVar);
    }

    @Override // kotlinx.coroutines.internal.t, kotlinx.coroutines.a
    public final void c(Object obj) {
        f fVar = this.e;
        cs<?> csVar = null;
        if (fVar != null) {
            z.b(fVar, this.f);
            this.e = null;
            this.f = null;
        }
        Object a2 = ac.a(obj, this.g);
        d<T> dVar = this.g;
        f b2 = dVar.b();
        Object a3 = z.a(b2, null);
        if (a3 != z.f38845a) {
            csVar = ae.a(dVar, b2, a3);
        }
        try {
            this.g.b(a2);
            v vVar = v.f38654a;
            if (csVar == null || csVar.r()) {
                z.b(b2, a3);
            }
        } catch (Throwable th) {
            if (csVar == null || csVar.r()) {
                z.b(b2, a3);
            }
            throw th;
        }
    }

    public final boolean r() {
        if (this.e == null) {
            return false;
        }
        this.e = null;
        this.f = null;
        return true;
    }
}
