package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.measurement.internal.zzag;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzfr;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.j2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/j2.class */
public final class RunnableC25072j2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzp f70153a;

    /* renamed from: b */
    public final /* synthetic */ zzcf f70154b;

    /* renamed from: c */
    public final /* synthetic */ zzjk f70155c;

    public RunnableC25072j2(zzjk zzjkVar, zzp zzpVar, zzcf zzcfVar) {
        this.f70155c = zzjkVar;
        this.f70153a = zzpVar;
        this.f70154b = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfr zzfrVar;
        String str = null;
        try {
            try {
                if (!((v0) this.f70155c).a.p().l().m38622e(zzag.ANALYTICS_STORAGE)) {
                    ((v0) this.f70155c).a.zzay().k.m38590a("Analytics storage consent denied; will not get app instance id");
                    ((v0) this.f70155c).a.r().g.set(null);
                    ((v0) this.f70155c).a.p().g.m38576b(null);
                    zzfrVar = ((v0) this.f70155c).a;
                    str = null;
                } else {
                    zzjk zzjkVar = this.f70155c;
                    zzdx zzdxVar = zzjkVar.d;
                    if (zzdxVar == null) {
                        ((v0) zzjkVar).a.zzay().f.m38590a("Failed to get app instance id");
                        zzfrVar = ((v0) this.f70155c).a;
                        str = null;
                    } else {
                        Objects.requireNonNull(this.f70153a, "null reference");
                        String m38606V0 = zzdxVar.m38606V0(this.f70153a);
                        if (m38606V0 != null) {
                            ((v0) this.f70155c).a.r().g.set(m38606V0);
                            ((v0) this.f70155c).a.p().g.m38576b(m38606V0);
                        }
                        this.f70155c.o();
                        zzfrVar = ((v0) this.f70155c).a;
                        str = m38606V0;
                    }
                }
            } catch (RemoteException e) {
                ((v0) this.f70155c).a.zzay().f.m38589b("Failed to get app instance id", e);
                zzfrVar = ((v0) this.f70155c).a;
            }
            zzfrVar.w().D(this.f70154b, str);
        } catch (Throwable th) {
            ((v0) this.f70155c).a.w().D(this.f70154b, (String) null);
            throw th;
        }
    }
}
