package p193e.p194a.p1002k4.p1004o;

import android.location.Location;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.Objects;
import p193e.p194a.p1002k4.p1004o.p1005i.C16542a;
import q3.a.n;
import s1.z.c.l;
/* renamed from: e.a.k4.o.e */
/* loaded from: classes11-dex2jar.jar:e/a/k4/o/e.class */
public final class C16536e<TResult> implements OnCompleteListener<Location> {

    /* renamed from: a */
    public final /* synthetic */ n f46469a;

    /* renamed from: b */
    public final /* synthetic */ C16537f f46470b;

    public C16536e(n nVar, C16537f c16537f) {
        this.f46469a = nVar;
        this.f46470b = c16537f;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<Location> task) {
        l.e(task, "it");
        n nVar = this.f46469a;
        C16542a c16542a = this.f46470b.f46473c;
        Location m38523o = task.m38523o();
        Objects.requireNonNull(c16542a);
        nVar.c(m38523o != null ? new C16532a(m38523o.getLatitude(), m38523o.getLongitude()) : null);
    }
}
