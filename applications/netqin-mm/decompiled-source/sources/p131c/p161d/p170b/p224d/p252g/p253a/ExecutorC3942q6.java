package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzayo;
import com.google.android.gms.internal.ads.zzayu;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.g.a.q6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/q6.class */
public final class ExecutorC3942q6 implements Executor {

    /* renamed from: a */
    public final Handler f14591a = new zzayo(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            try {
                runnable.run();
            } catch (Throwable th) {
                zzp.m17969c();
                zzayu.m16136a(zzp.m17965g().m16193a(), th);
                throw th;
            }
        } else {
            this.f14591a.post(runnable);
        }
    }
}
