package p193e.p1577m.p1578a.p1642f.p1670q;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.tasks.zza;
import java.util.concurrent.Executor;
/* renamed from: e.m.a.f.q.z */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/q/z.class */
public final class ExecutorC25146z implements Executor {

    /* renamed from: a */
    public final Handler f70387a = new zza(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f70387a.post(runnable);
    }
}
