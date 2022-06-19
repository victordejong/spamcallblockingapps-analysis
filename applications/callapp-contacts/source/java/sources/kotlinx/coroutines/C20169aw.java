package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.p522a.C18308b;
import kotlinx.coroutines.internal.C20270f;
import kotlinx.coroutines.internal.C20294t;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\b��\u0018��*\u0006\b��\u0010\u0001 ��2\b\u0012\u0004\u0012\u00028��0\u0015B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0012¨\u0006\u0014"}, m4298d2 = {"Lkotlinx/coroutines/DispatchedCoroutine;", "T", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/coroutines/Continuation;", "uCont", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "", "afterCompletion", "(Ljava/lang/Object;)V", "afterResume", "getResult", "()Ljava/lang/Object;", "", "tryResume", "()Z", "trySuspend", "kotlinx-coroutines-core", "Lkotlinx/coroutines/internal/ScopeCoroutine;"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.aw */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/aw.class */
public final class C20169aw<T> extends C20294t<T> {

    /* renamed from: e */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f66573e = AtomicIntegerFieldUpdater.newUpdater(C20169aw.class, "_decision");
    private volatile /* synthetic */ int _decision = 0;

    public C20169aw(AbstractC18335f abstractC18335f, AbstractC18332d<? super T> abstractC18332d) {
        super(abstractC18335f, abstractC18332d);
    }

    /* renamed from: r */
    private final boolean m1068r() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("Already resumed".toString());
                }
                return false;
            }
        } while (!f66573e.compareAndSet(this, 0, 2));
        return true;
    }

    @Override // kotlinx.coroutines.internal.C20294t, kotlinx.coroutines.AbstractC20132a
    /* renamed from: c */
    public final void mo821c(Object obj) {
        if (m1068r()) {
            return;
        }
        C20270f.m873a(C18308b.m4100a(this.f66770g), C20137ac.m1097a(obj, this.f66770g), null);
    }

    @Override // kotlinx.coroutines.internal.C20294t, kotlinx.coroutines.C20228ca
    /* renamed from: d */
    public final void mo820d(Object obj) {
        mo821c(obj);
    }
}
