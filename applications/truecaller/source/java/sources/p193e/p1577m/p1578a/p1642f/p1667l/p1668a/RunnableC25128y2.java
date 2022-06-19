package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjj;
import com.google.android.gms.measurement.internal.zzjk;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.y2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/y2.class */
public final class RunnableC25128y2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzdx f70352a;

    /* renamed from: b */
    public final /* synthetic */ zzjj f70353b;

    public RunnableC25128y2(zzjj zzjjVar, zzdx zzdxVar) {
        this.f70353b = zzjjVar;
        this.f70352a = zzdxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f70353b) {
            this.f70353b.a = false;
            if (!this.f70353b.c.j()) {
                ((v0) this.f70353b.c).a.zzay().n.m38590a("Connected to service");
                zzjk zzjkVar = this.f70353b.c;
                zzdx zzdxVar = this.f70352a;
                zzjkVar.d();
                Objects.requireNonNull(zzdxVar, "null reference");
                zzjkVar.d = zzdxVar;
                zzjkVar.o();
                zzjkVar.n();
            }
        }
    }
}
