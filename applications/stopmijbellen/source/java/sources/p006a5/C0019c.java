package p006a5;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* renamed from: a5.c */
/* loaded from: classes-dex2jar.jar:a5/c.class */
public class C0019c implements Continuation<Void, Object> {
    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task<Void> task) throws Exception {
        if (!task.isSuccessful()) {
            task.getException();
            return null;
        }
        return null;
    }
}
