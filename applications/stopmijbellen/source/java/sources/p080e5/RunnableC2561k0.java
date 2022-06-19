package p080e5;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.Callable;
/* renamed from: e5.k0 */
/* loaded from: classes-dex2jar.jar:e5/k0.class */
public class RunnableC2561k0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Callable f8939a;

    /* renamed from: b */
    public final /* synthetic */ TaskCompletionSource f8940b;

    /* renamed from: e5.k0$a */
    /* loaded from: classes-dex2jar.jar:e5/k0$a.class */
    public class C2562a implements Continuation<Object, Void> {
        public C2562a() {
            RunnableC2561k0.this = r4;
        }

        @Override // com.google.android.gms.tasks.Continuation
        public Void then(Task<Object> task) throws Exception {
            if (task.isSuccessful()) {
                RunnableC2561k0.this.f8940b.setResult(task.getResult());
                return null;
            }
            RunnableC2561k0.this.f8940b.setException(task.getException());
            return null;
        }
    }

    public RunnableC2561k0(Callable callable, TaskCompletionSource taskCompletionSource) {
        this.f8939a = callable;
        this.f8940b = taskCompletionSource;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ((Task) this.f8939a.call()).continueWith(new C2562a());
        } catch (Exception e) {
            this.f8940b.setException(e);
        }
    }
}
