package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwd;
import com.google.android.gms.internal.ads.zzdxq;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: c.d.b.d.g.a.c20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/c20.class */
public class c20<V> implements zzdzc<V> {

    /* renamed from: b */
    public static final zzdzc<?> f12516b = new c20(null);

    /* renamed from: c */
    public static final Logger f12517c = Logger.getLogger(c20.class.getName());

    /* renamed from: a */
    public final V f12518a;

    /* renamed from: c.d.b.d.g.a.c20$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/c20$a.class */
    public static final class C3419a<V> extends zzdxq.C7251h<V> {
        public C3419a(Throwable th) {
            mo12971a(th);
        }
    }

    public c20(V v) {
        this.f12518a = v;
    }

    @Override // com.google.android.gms.internal.ads.zzdzc
    /* renamed from: a */
    public void mo12976a(Runnable runnable, Executor executor) {
        zzdwd.m13095a(runnable, "Runnable was null.");
        zzdwd.m13095a(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f12517c;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.ImmediateFuture", "addListener", sb.toString(), (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return this.f12518a;
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws ExecutionException {
        zzdwd.m13096a(timeUnit);
        return get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }

    public String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.f12518a);
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 27 + String.valueOf(valueOf).length());
        sb.append(obj);
        sb.append("[status=SUCCESS, result=[");
        sb.append(valueOf);
        sb.append("]]");
        return sb.toString();
    }
}
