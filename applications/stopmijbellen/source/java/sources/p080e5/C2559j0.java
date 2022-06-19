package p080e5;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
/* renamed from: e5.j0 */
/* loaded from: classes-dex2jar.jar:e5/j0.class */
public class C2559j0 implements Continuation<Object, Void> {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f8937a;

    public C2559j0(TaskCompletionSource taskCompletionSource) {
        this.f8937a = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Void then(Task<Object> task) throws Exception {
        if (task.isSuccessful()) {
            this.f8937a.trySetResult(task.getResult());
            return null;
        }
        this.f8937a.trySetException(task.getException());
        return null;
    }
}
