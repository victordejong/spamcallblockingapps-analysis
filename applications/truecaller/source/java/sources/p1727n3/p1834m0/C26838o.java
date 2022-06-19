package p1727n3.p1834m0;

import com.google.common.util.concurrent.ListenableFuture;
import com.razorpay.AnalyticsConstants;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import n3.m0.c0.t.w.c;
import p1727n3.p1834m0.p1835c0.p1845t.p1846w.AbstractC26809a;
import q3.a.p1;
import q3.a.u1;
import s1.z.c.l;
@Metadata(d1 = {"��B\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006¢\u0006\u0002\u0010\u0007J)\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b2\u000e\u0010\r\u001a\n \f*\u0004\u0018\u00010\u000e0\u000eH\u0096\u0001J\u0011\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0096\u0001J\u0013\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00028��¢\u0006\u0002\u0010\u0013J\u0016\u0010\u0014\u001a\n \f*\u0004\u0018\u00018��8��H\u0096\u0001¢\u0006\u0002\u0010\u0015J.\u0010\u0014\u001a\n \f*\u0004\u0018\u00018��8��2\u0006\u0010\n\u001a\u00020\u00162\u000e\u0010\r\u001a\n \f*\u0004\u0018\u00010\u00170\u0017H\u0096\u0003¢\u0006\u0002\u0010\u0018J\t\u0010\u0019\u001a\u00020\u0010H\u0096\u0001J\t\u0010\u001a\u001a\u00020\u0010H\u0096\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001b"}, d2 = {"Landroidx/work/JobListenableFuture;", "R", "Lcom/google/common/util/concurrent/ListenableFuture;", "job", "Lkotlinx/coroutines/Job;", "underlying", "Landroidx/work/impl/utils/futures/SettableFuture;", "(Lkotlinx/coroutines/Job;Landroidx/work/impl/utils/futures/SettableFuture;)V", "addListener", "", "p0", "Ljava/lang/Runnable;", "kotlin.jvm.PlatformType", "p1", "Ljava/util/concurrent/Executor;", "cancel", "", AnalyticsConstants.COMPLETE, "result", "(Ljava/lang/Object;)V", "get", "()Ljava/lang/Object;", "", "Ljava/util/concurrent/TimeUnit;", "(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;", "isCancelled", "isDone", "work-runtime-ktx_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: n3.m0.o */
/* loaded from: classes-dex2jar.jar:n3/m0/o.class */
public final class C26838o<R> implements ListenableFuture<R> {

    /* renamed from: a */
    public final p1 f75092a;

    /* renamed from: b */
    public final c<R> f75093b;

    public C26838o(p1 p1Var, c cVar, int i) {
        c<R> cVar2;
        if ((i & 2) != 0) {
            cVar2 = new c<>();
            l.d(cVar2, "create()");
        } else {
            cVar2 = null;
        }
        l.e(p1Var, "job");
        l.e(cVar2, "underlying");
        this.f75092a = p1Var;
        this.f75093b = cVar2;
        ((u1) p1Var).n0(false, true, new n(this));
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        this.f75093b.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f75093b.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public R get() {
        return (R) this.f75093b.get();
    }

    @Override // java.util.concurrent.Future
    public R get(long j, TimeUnit timeUnit) {
        return (R) this.f75093b.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f75093b.f75026a instanceof AbstractC26809a.C26812c;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f75093b.isDone();
    }
}
