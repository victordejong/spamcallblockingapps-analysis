package p080e5;

import android.util.Log;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Executor;
import p168m5.C3641a;
/* renamed from: e5.n */
/* loaded from: classes-dex2jar.jar:e5/n.class */
public class C2566n implements SuccessContinuation<C3641a, Void> {

    /* renamed from: a */
    public final /* synthetic */ Executor f8950a;

    /* renamed from: b */
    public final /* synthetic */ CallableC2567o f8951b;

    public C2566n(CallableC2567o callableC2567o, Executor executor) {
        this.f8951b = callableC2567o;
        this.f8950a = executor;
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task<Void> then(C3641a c3641a) throws Exception {
        Task<Void> task;
        if (c3641a == null) {
            Log.w("FirebaseCrashlytics", "Received null app settings at app startup. Cannot send cached reports", null);
            task = Tasks.forResult(null);
        } else {
            C2568p.m3431b(C2568p.this);
            C2568p.this.f8965l.m3435c(this.f8950a);
            C2568p.this.f8969p.trySetResult(null);
            task = Tasks.forResult(null);
        }
        return task;
    }
}
