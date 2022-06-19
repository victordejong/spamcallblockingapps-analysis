package kotlinx.coroutines;

import kotlin.C20128v;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lkotlinx/coroutines/DisposeOnCancel;", "Lkotlinx/coroutines/CancelHandler;", "handle", "Lkotlinx/coroutines/DisposableHandle;", "(Lkotlinx/coroutines/DisposableHandle;)V", "invoke", "", "cause", "", "toString", "", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.bc */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bc.class */
final class C20193bc extends AbstractC20306l {

    /* renamed from: a */
    private final AbstractC20192bb f66638a;

    public C20193bc(AbstractC20192bb abstractC20192bb) {
        this.f66638a = abstractC20192bb;
    }

    @Override // kotlinx.coroutines.AbstractC20307m
    /* renamed from: a */
    public final void mo801a(Throwable th) {
        this.f66638a.mo918a();
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ C20128v invoke(Throwable th) {
        mo801a(th);
        return C20128v.f66529a;
    }

    public final String toString() {
        return "DisposeOnCancel[" + this.f66638a + ']';
    }
}
