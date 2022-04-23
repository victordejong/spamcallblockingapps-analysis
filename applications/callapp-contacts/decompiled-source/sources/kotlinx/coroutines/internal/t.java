package kotlinx.coroutines.internal;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import kotlin.Metadata;
import kotlin.c.a.b;
import kotlin.c.b.a.d;
import kotlin.c.f;
import kotlinx.coroutines.a;
import kotlinx.coroutines.ac;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0010\u0018��*\u0006\b��\u0010\u0001 ��2\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\u001b\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\u0002\u0010\tJ\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u0018\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u000e\u0010\u0019\u001a\n\u0018\u00010\u001aj\u0004\u0018\u0001`\u001bR\u0019\u0010\n\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00118@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b8\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/internal/ScopeCoroutine;", "T", "Lkotlinx/coroutines/AbstractCoroutine;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "context", "Lkotlin/coroutines/CoroutineContext;", "uCont", "Lkotlin/coroutines/Continuation;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "callerFrame", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "isScopedCoroutine", "", "()Z", "parent", "Lkotlinx/coroutines/Job;", "getParent$kotlinx_coroutines_core", "()Lkotlinx/coroutines/Job;", "afterCompletion", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "", "afterResume", "getStackTraceElement", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/t.class */
public class t<T> extends a<T> implements d {
    public final kotlin.c.d<T> g;

    /* JADX WARN: Multi-variable type inference failed */
    public t(f fVar, kotlin.c.d<? super T> dVar) {
        super(fVar, true);
        this.g = dVar;
    }

    @Override // kotlinx.coroutines.ca
    public final boolean aA_() {
        return true;
    }

    @Override // kotlin.c.b.a.d
    public final d c() {
        kotlin.c.d<T> dVar = this.g;
        kotlin.c.d<T> dVar2 = dVar;
        if (!(dVar instanceof d)) {
            dVar2 = null;
        }
        return (d) dVar2;
    }

    @Override // kotlinx.coroutines.a
    public void c(Object obj) {
        kotlin.c.d<T> dVar = this.g;
        dVar.b(ac.a(obj, dVar));
    }

    @Override // kotlin.c.b.a.d
    public final StackTraceElement d() {
        return null;
    }

    @Override // kotlinx.coroutines.ca
    public void d(Object obj) {
        f.a(b.a(this.g), ac.a(obj, this.g), null);
    }
}
