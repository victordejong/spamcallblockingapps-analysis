package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzag;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: e.m.a.f.l.a.i2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/i2.class */
public final class RunnableC25067i2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f70138a;

    /* renamed from: b */
    public final /* synthetic */ zzp f70139b;

    /* renamed from: c */
    public final /* synthetic */ zzjk f70140c;

    public RunnableC25067i2(zzjk zzjkVar, AtomicReference atomicReference, zzp zzpVar) {
        this.f70140c = zzjkVar;
        this.f70138a = atomicReference;
        this.f70139b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.f70138a) {
            try {
            } catch (RemoteException e) {
                ((v0) this.f70140c).a.zzay().f.m38589b("Failed to get app instance id", e);
                atomicReference = this.f70138a;
            }
            if (!((v0) this.f70140c).a.p().l().m38622e(zzag.ANALYTICS_STORAGE)) {
                ((v0) this.f70140c).a.zzay().k.m38590a("Analytics storage consent denied; will not get app instance id");
                ((v0) this.f70140c).a.r().g.set(null);
                ((v0) this.f70140c).a.p().g.m38576b(null);
                this.f70138a.set(null);
                this.f70138a.notify();
                return;
            }
            zzjk zzjkVar = this.f70140c;
            zzdx zzdxVar = zzjkVar.d;
            if (zzdxVar == null) {
                ((v0) zzjkVar).a.zzay().f.m38590a("Failed to get app instance id");
                this.f70138a.notify();
                return;
            }
            Objects.requireNonNull(this.f70139b, "null reference");
            this.f70138a.set(zzdxVar.m38606V0(this.f70139b));
            String str = (String) this.f70138a.get();
            if (str != null) {
                ((v0) this.f70140c).a.r().g.set(str);
                ((v0) this.f70140c).a.p().g.m38576b(str);
            }
            this.f70140c.o();
            atomicReference = this.f70138a;
            atomicReference.notify();
        }
    }
}
