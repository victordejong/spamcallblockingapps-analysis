package p080e5;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Callable;
/* renamed from: e5.g */
/* loaded from: classes-dex2jar.jar:e5/g.class */
public class C2552g implements Continuation<Void, Object> {

    /* renamed from: a */
    public final /* synthetic */ Callable f8924a;

    public C2552g(C2549f c2549f, Callable callable) {
        this.f8924a = callable;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task<Void> task) throws Exception {
        return this.f8924a.call();
    }
}
