package p193e.p194a.p1220s4;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import e.m.d.b0.k;
import s1.z.c.l;
/* renamed from: e.a.s4.b */
/* loaded from: classes12-dex2jar.jar:e/a/s4/b.class */
public final class C20236b<TResult> implements OnCompleteListener<Void> {

    /* renamed from: a */
    public final /* synthetic */ k f56984a;

    public C20236b(k kVar) {
        this.f56984a = kVar;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<Void> task) {
        l.e(task, "task");
        task.m38519s();
        if (task.m38519s()) {
            l.d(this.f56984a.a(), "activate()");
        } else {
            task.m38524n();
        }
    }
}
