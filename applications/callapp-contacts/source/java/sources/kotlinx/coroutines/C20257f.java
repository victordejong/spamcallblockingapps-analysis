package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18335f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u000b\u0010\u0011\u001a\u00028��¢\u0006\u0002\u0010\u0012R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\n\u001a\u00020\u000b8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\f¨\u0006\u0013"}, m4298d2 = {"Lkotlinx/coroutines/BlockingCoroutine;", "T", "Lkotlinx/coroutines/AbstractCoroutine;", "parentContext", "Lkotlin/coroutines/CoroutineContext;", "blockedThread", "Ljava/lang/Thread;", "eventLoop", "Lkotlinx/coroutines/EventLoop;", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/EventLoop;)V", "isScopedCoroutine", "", "()Z", "afterCompletion", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "", "joinBlocking", "()Ljava/lang/Object;", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.f */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/f.class */
public final class C20257f<T> extends AbstractC20132a<T> {

    /* renamed from: e */
    private final Thread f66712e;

    /* renamed from: f */
    private final AbstractC20196bf f66713f;

    public C20257f(AbstractC18335f abstractC18335f, Thread thread, AbstractC20196bf abstractC20196bf) {
        super(abstractC18335f, true);
        this.f66712e = thread;
        this.f66713f = abstractC20196bf;
    }

    @Override // kotlinx.coroutines.C20228ca
    protected final boolean aA_() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* renamed from: d */
    public final T m904d() {
        AbstractC20196bf abstractC20196bf = this.f66713f;
        if (abstractC20196bf != null) {
            abstractC20196bf.m1012a(false);
        }
        while (!Thread.interrupted()) {
            AbstractC20196bf abstractC20196bf2 = this.f66713f;
            ?? mo1000c = abstractC20196bf2 != null ? abstractC20196bf2.mo1000c() : true;
            if (mo940k()) {
                AbstractC20196bf abstractC20196bf3 = this.f66713f;
                if (abstractC20196bf3 != null) {
                    abstractC20196bf3.m1010b(false);
                }
                T t = (T) C20233cb.m927b(m935p());
                C20322z c20322z = (C20322z) (!(t instanceof C20322z) ? null : t);
                if (c20322z != null) {
                    throw c20322z.f66802b;
                }
                return t;
            } else if (C20247cp.f66702a == null) {
                LockSupport.parkNanos(this, mo1000c == true ? 1L : 0L);
            }
        }
        InterruptedException interruptedException = new InterruptedException();
        m956b((Throwable) interruptedException);
        throw interruptedException;
    }

    @Override // kotlinx.coroutines.C20228ca
    /* renamed from: d */
    public final void mo820d(Object obj) {
        if (!C18524p.m3850a(Thread.currentThread(), this.f66712e)) {
            Thread thread = this.f66712e;
            if (C20247cp.f66702a != null) {
                return;
            }
            LockSupport.unpark(thread);
        }
    }
}
