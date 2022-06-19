package p080e5;

import android.util.Log;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Executor;
import p168m5.C3641a;
/* renamed from: e5.l */
/* loaded from: classes-dex2jar.jar:e5/l.class */
public class C2563l implements SuccessContinuation<C3641a, Void> {

    /* renamed from: a */
    public final /* synthetic */ Executor f8942a;

    /* renamed from: b */
    public final /* synthetic */ CallableC2565m f8943b;

    public C2563l(CallableC2565m callableC2565m, Executor executor) {
        this.f8943b = callableC2565m;
        this.f8942a = executor;
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task<Void> then(C3641a c3641a) throws Exception {
        Task<Void> task;
        if (c3641a == null) {
            Log.w("FirebaseCrashlytics", "Received null app settings, cannot send reports at crash time.", null);
            task = Tasks.forResult(null);
        } else {
            task = Tasks.whenAll(C2568p.m3431b(this.f8943b.f8949e), this.f8943b.f8949e.f8965l.m3435c(this.f8942a));
        }
        return task;
    }
}
