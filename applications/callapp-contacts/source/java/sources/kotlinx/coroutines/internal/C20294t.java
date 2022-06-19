package kotlinx.coroutines.internal;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import kotlin.Metadata;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.p522a.C18308b;
import kotlin.p521c.p523b.p524a.AbstractC18319d;
import kotlinx.coroutines.AbstractC20132a;
import kotlinx.coroutines.C20137ac;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��J\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0010\u0018��*\u0006\b��\u0010\u0001 ��2\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\u001b\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\u0002\u0010\tJ\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u0018\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u000e\u0010\u0019\u001a\n\u0018\u00010\u001aj\u0004\u0018\u0001`\u001bR\u0019\u0010\n\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00118@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b8\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u001c"}, m4298d2 = {"Lkotlinx/coroutines/internal/ScopeCoroutine;", "T", "Lkotlinx/coroutines/AbstractCoroutine;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "context", "Lkotlin/coroutines/CoroutineContext;", "uCont", "Lkotlin/coroutines/Continuation;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "callerFrame", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "isScopedCoroutine", "", "()Z", "parent", "Lkotlinx/coroutines/Job;", "getParent$kotlinx_coroutines_core", "()Lkotlinx/coroutines/Job;", "afterCompletion", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "", "afterResume", "getStackTraceElement", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.t */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/t.class */
public class C20294t<T> extends AbstractC20132a<T> implements AbstractC18319d {

    /* renamed from: g */
    public final AbstractC18332d<T> f66770g;

    /* JADX WARN: Multi-variable type inference failed */
    public C20294t(AbstractC18335f abstractC18335f, AbstractC18332d<? super T> abstractC18332d) {
        super(abstractC18335f, true);
        this.f66770g = abstractC18332d;
    }

    @Override // kotlinx.coroutines.C20228ca
    public final boolean aA_() {
        return true;
    }

    @Override // kotlin.p521c.p523b.p524a.AbstractC18319d
    /* renamed from: c */
    public final AbstractC18319d mo784c() {
        AbstractC18332d<T> abstractC18332d = this.f66770g;
        AbstractC18332d<T> abstractC18332d2 = abstractC18332d;
        if (!(abstractC18332d instanceof AbstractC18319d)) {
            abstractC18332d2 = null;
        }
        return (AbstractC18319d) abstractC18332d2;
    }

    @Override // kotlinx.coroutines.AbstractC20132a
    /* renamed from: c */
    public void mo821c(Object obj) {
        AbstractC18332d<T> abstractC18332d = this.f66770g;
        abstractC18332d.mo786b(C20137ac.m1097a(obj, abstractC18332d));
    }

    @Override // kotlin.p521c.p523b.p524a.AbstractC18319d
    /* renamed from: d */
    public final StackTraceElement mo782d() {
        return null;
    }

    @Override // kotlinx.coroutines.C20228ca
    /* renamed from: d */
    public void mo820d(Object obj) {
        C20270f.m873a(C18308b.m4100a(this.f66770g), C20137ac.m1097a(obj, this.f66770g), null);
    }
}
