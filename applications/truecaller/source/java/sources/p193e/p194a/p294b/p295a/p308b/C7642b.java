package p193e.p194a.p294b.p295a.p308b;

import android.os.Bundle;
import e.m.a.g.e.e;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import q3.a.i0;
import q3.a.p1;
import q3.a.t0;
import q3.a.y1;
import q3.a.y2.q;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0012\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\r\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Le/a/b/a/b/b;", "Le/m/a/g/e/e;", "Lq3/a/i0;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "()V", "Ls1/w/f;", "getCoroutineContext", "()Ls1/w/f;", "coroutineContext", "Lq3/a/p1;", "a", "Lq3/a/p1;", "job", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.b.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/b/b.class */
public class C7642b extends e implements i0 {

    /* renamed from: a */
    public p1 f24014a;

    public f getCoroutineContext() {
        t0 t0Var = t0.a;
        y1 y1Var = q.c;
        p1 p1Var = this.f24014a;
        if (p1Var != null) {
            return y1Var.plus(p1Var);
        }
        l.l("job");
        throw null;
    }

    public void onCreate(Bundle bundle) {
        C7642b.super.onCreate(bundle);
        this.f24014a = d.j((p1) null, 1, (Object) null);
    }

    public void onDestroy() {
        C7642b.super.onDestroy();
        p1 p1Var = this.f24014a;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        } else {
            l.l("job");
            throw null;
        }
    }
}
