package p006a5;

import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import p080e5.C2564l0;
import p080e5.C2575v;
import p080e5.CallableC2573t;
import p080e5.RunnableC2561k0;
import p157l5.C3499c;
/* renamed from: a5.d */
/* loaded from: classes-dex2jar.jar:a5/d.class */
public class CallableC0020d implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ boolean f23a;

    /* renamed from: b */
    public final /* synthetic */ C2575v f24b;

    /* renamed from: c */
    public final /* synthetic */ C3499c f25c;

    public CallableC0020d(boolean z, C2575v c2575v, C3499c c3499c) {
        this.f23a = z;
        this.f24b = c2575v;
        this.f25c = c3499c;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        if (this.f23a) {
            C2575v c2575v = this.f24b;
            C3499c c3499c = this.f25c;
            ExecutorService executorService = c2575v.f8990j;
            CallableC2573t callableC2573t = new CallableC2573t(c2575v, c3499c);
            ExecutorService executorService2 = C2564l0.f8944a;
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            executorService.execute(new RunnableC2561k0(callableC2573t, taskCompletionSource));
            taskCompletionSource.getTask();
            return null;
        }
        return null;
    }
}
