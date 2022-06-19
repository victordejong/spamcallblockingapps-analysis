package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* renamed from: e.m.a.f.e.a.a.j0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/j0.class */
public final class C24926j0 implements Continuation<Boolean, Void> {
    @Override // com.google.android.gms.tasks.Continuation
    public final /* bridge */ /* synthetic */ Void then(Task<Boolean> task) throws Exception {
        if (task.m38523o().booleanValue()) {
            return null;
        }
        throw new ApiException(new Status(13, "listener already unregistered"));
    }
}
