package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import com.google.android.gms.common.api.internal.zav;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
/* renamed from: c.d.b.d.d.a.a.q0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/q0.class */
public final class C3275q0 implements OnCompleteListener<TResult> {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f11982a;

    /* renamed from: b */
    public final /* synthetic */ zav f11983b;

    public C3275q0(zav zavVar, TaskCompletionSource taskCompletionSource) {
        this.f11983b = zavVar;
        this.f11982a = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    /* renamed from: a */
    public final void mo8619a(Task<TResult> task) {
        Map map;
        map = this.f11983b.f23299b;
        map.remove(this.f11982a);
    }
}
