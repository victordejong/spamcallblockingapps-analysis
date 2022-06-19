package p080e5;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
/* renamed from: e5.h */
/* loaded from: classes-dex2jar.jar:e5/h.class */
public class C2554h implements Continuation, SuccessContinuation {
    public /* synthetic */ C2554h(Object obj) {
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) throws Exception {
        Void r0 = (Void) obj;
        return Tasks.forResult(Boolean.TRUE);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public /* bridge */ /* synthetic */ Object then(Task task) throws Exception {
        return null;
    }
}
