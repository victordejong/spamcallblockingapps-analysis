package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjj;
import com.google.android.gms.measurement.internal.zzjk;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.a3 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/a3.class */
public final class RunnableC25024a3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzdx f70003a;

    /* renamed from: b */
    public final /* synthetic */ zzjj f70004b;

    public RunnableC25024a3(zzjj zzjjVar, zzdx zzdxVar) {
        this.f70004b = zzjjVar;
        this.f70003a = zzdxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f70004b) {
            this.f70004b.a = false;
            if (!this.f70004b.c.j()) {
                ((v0) this.f70004b.c).a.zzay().m.m38590a("Connected to remote service");
                zzjk zzjkVar = this.f70004b.c;
                zzdx zzdxVar = this.f70003a;
                zzjkVar.d();
                Objects.requireNonNull(zzdxVar, "null reference");
                zzjkVar.d = zzdxVar;
                zzjkVar.o();
                zzjkVar.n();
            }
        }
    }
}
