package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwd;
import com.google.android.gms.internal.ads.zzdzb;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: c.d.b.d.g.a.l20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/l20.class */
public final class l20 extends i20 implements zzdzb, ScheduledExecutorService {

    /* renamed from: b */
    public final ScheduledExecutorService f13928b;

    public l20(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        zzdwd.m13096a(scheduledExecutorService);
        this.f13928b = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        q20 a = q20.m26530a(runnable, (Object) null);
        return new k20(a, this.f13928b.schedule(a, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        q20 a = q20.m26529a(callable);
        return new k20(a, this.f13928b.schedule(a, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        m20 m20Var = new m20(runnable);
        return new k20(m20Var, this.f13928b.scheduleAtFixedRate(m20Var, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        m20 m20Var = new m20(runnable);
        return new k20(m20Var, this.f13928b.scheduleWithFixedDelay(m20Var, j, j2, timeUnit));
    }
}
