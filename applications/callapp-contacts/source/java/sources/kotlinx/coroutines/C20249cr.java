package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.p521c.AbstractC18335f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u00060\bj\u0002`\tH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, m4298d2 = {"Lkotlinx/coroutines/Unconfined;", "Lkotlinx/coroutines/CoroutineDispatcher;", "()V", "dispatch", "", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "isDispatchNeeded", "", "toString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.cr */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/cr.class */
public final class C20249cr extends AbstractC20140af {

    /* renamed from: b */
    public static final C20249cr f66704b = new C20249cr();

    private C20249cr() {
    }

    @Override // kotlinx.coroutines.AbstractC20140af
    /* renamed from: a */
    public final void mo763a(AbstractC18335f abstractC18335f, Runnable runnable) {
        C20252cu c20252cu = (C20252cu) abstractC18335f.get(C20252cu.f66708b);
        if (c20252cu != null) {
            c20252cu.f66709a = true;
            return;
        }
        throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
    }

    @Override // kotlinx.coroutines.AbstractC20140af
    /* renamed from: b */
    public final boolean mo824b() {
        return false;
    }

    @Override // kotlinx.coroutines.AbstractC20140af
    public final String toString() {
        return "Dispatchers.Unconfined";
    }
}
