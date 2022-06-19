package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlinx.coroutines.internal.C20294t;
import kotlinx.coroutines.internal.C20300z;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b��\u0018��*\u0006\b��\u0010\u0001 ��2\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006¢\u0006\u0002\u0010\u0007J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\nH\u0014J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0018\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\nR\u0010\u0010\b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"Lkotlinx/coroutines/UndispatchedCoroutine;", "T", "Lkotlinx/coroutines/internal/ScopeCoroutine;", "context", "Lkotlin/coroutines/CoroutineContext;", "uCont", "Lkotlin/coroutines/Continuation;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "savedContext", "savedOldValue", "", "afterResume", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "clearThreadContext", "", "saveThreadContext", "oldValue", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.cs */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/cs.class */
public final class C20250cs<T> extends C20294t<T> {

    /* renamed from: e */
    AbstractC18335f f66705e;

    /* renamed from: f */
    Object f66706f;

    public C20250cs(AbstractC18335f abstractC18335f, AbstractC18332d<? super T> abstractC18332d) {
        super(abstractC18335f.get(C20251ct.f66707a) == null ? abstractC18335f.plus(C20251ct.f66707a) : abstractC18335f, abstractC18332d);
    }

    @Override // kotlinx.coroutines.internal.C20294t, kotlinx.coroutines.AbstractC20132a
    /* renamed from: c */
    public final void mo821c(Object obj) {
        AbstractC18335f abstractC18335f = this.f66705e;
        if (abstractC18335f != null) {
            C20300z.m804b(abstractC18335f, this.f66706f);
            this.f66705e = null;
            this.f66706f = null;
        }
        Object m1097a = C20137ac.m1097a(obj, this.f66770g);
        AbstractC18332d<T> abstractC18332d = this.f66770g;
        AbstractC18335f mo787b = abstractC18332d.mo787b();
        Object m805a = C20300z.m805a(mo787b, null);
        C20250cs<?> c20250cs = null;
        if (m805a != C20300z.f66775a) {
            c20250cs = C20139ae.m1093a(abstractC18332d, mo787b, m805a);
        }
        try {
            this.f66770g.mo786b(m1097a);
            C20128v c20128v = C20128v.f66529a;
            if (c20250cs != null && !c20250cs.m906r()) {
                return;
            }
            C20300z.m804b(mo787b, m805a);
        } catch (Throwable th) {
            if (c20250cs == null || c20250cs.m906r()) {
                C20300z.m804b(mo787b, m805a);
            }
            throw th;
        }
    }

    /* renamed from: r */
    public final boolean m906r() {
        if (this.f66705e == null) {
            return false;
        }
        this.f66705e = null;
        this.f66706f = null;
        return true;
    }
}
