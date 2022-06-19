package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.measurement.internal.zzau;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzfr;
import com.google.android.gms.measurement.internal.zzjk;
/* renamed from: e.m.a.f.l.a.o2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/o2.class */
public final class RunnableC25093o2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzau f70231a;

    /* renamed from: b */
    public final /* synthetic */ String f70232b;

    /* renamed from: c */
    public final /* synthetic */ zzcf f70233c;

    /* renamed from: d */
    public final /* synthetic */ zzjk f70234d;

    public RunnableC25093o2(zzjk zzjkVar, zzau zzauVar, String str, zzcf zzcfVar) {
        this.f70234d = zzjkVar;
        this.f70231a = zzauVar;
        this.f70232b = str;
        this.f70233c = zzcfVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        zzfr zzfrVar = null;
        byte[] bArr = null;
        try {
            try {
                zzjk zzjkVar = this.f70234d;
                zzdx zzdxVar = zzjkVar.d;
                if (zzdxVar == null) {
                    ((v0) zzjkVar).a.zzay().f.m38590a("Discarding data. Failed to send event to service to bundle");
                    zzfrVar = ((v0) this.f70234d).a;
                    bArr = null;
                } else {
                    byte[] m38598x1 = zzdxVar.m38598x1(this.f70231a, this.f70232b);
                    this.f70234d.o();
                    zzfrVar = ((v0) this.f70234d).a;
                    bArr = m38598x1;
                }
            } catch (RemoteException e) {
                ((v0) this.f70234d).a.zzay().f.m38589b("Failed to send event to the service to bundle", e);
                zzfrVar = ((v0) this.f70234d).a;
            }
            zzfrVar.w().A(this.f70233c, bArr);
        } catch (Throwable th) {
            ((v0) this.f70234d).a.w().A(this.f70233c, zzfrVar);
            throw th;
        }
    }
}
