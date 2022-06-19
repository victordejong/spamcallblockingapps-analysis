package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import com.google.android.gms.common.api.internal.zaaa;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
/* renamed from: e.m.a.f.e.a.a.z0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/z0.class */
public final class C24958z0 implements OnCompleteListener {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f69901a;

    /* renamed from: b */
    public final /* synthetic */ zaaa f69902b;

    public C24958z0(zaaa zaaaVar, TaskCompletionSource taskCompletionSource) {
        this.f69902b = zaaaVar;
        this.f69901a = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        this.f69902b.f5781b.remove(this.f69901a);
    }
}
