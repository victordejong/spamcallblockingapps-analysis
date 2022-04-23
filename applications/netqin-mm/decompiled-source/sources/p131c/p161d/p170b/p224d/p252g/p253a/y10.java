package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwd;
import com.google.android.gms.internal.ads.zzdyl;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: c.d.b.d.g.a.y10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/y10.class */
public final class y10<V> extends zzdyl<V> {

    /* renamed from: h */
    public final zzdzc<V> f16085h;

    public y10(zzdzc<V> zzdzcVar) {
        zzdwd.m13096a(zzdzcVar);
        this.f16085h = zzdzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxq, com.google.android.gms.internal.ads.zzdzc
    /* renamed from: a */
    public final void mo12976a(Runnable runnable, Executor executor) {
        this.f16085h.mo12976a(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzdxq, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f16085h.cancel(z);
    }

    @Override // com.google.android.gms.internal.ads.zzdxq, java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        return this.f16085h.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdxq, java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f16085h.get(j, timeUnit);
    }

    @Override // com.google.android.gms.internal.ads.zzdxq, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f16085h.isCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzdxq, java.util.concurrent.Future
    public final boolean isDone() {
        return this.f16085h.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzdxq
    public final String toString() {
        return this.f16085h.toString();
    }
}
