package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzks;
import com.google.android.gms.measurement.internal.zzp;
import java.util.List;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.f2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/f2.class */
public final class RunnableC25050f2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f70075a;

    /* renamed from: b */
    public final /* synthetic */ String f70076b;

    /* renamed from: c */
    public final /* synthetic */ zzp f70077c;

    /* renamed from: d */
    public final /* synthetic */ boolean f70078d;

    /* renamed from: e */
    public final /* synthetic */ zzcf f70079e;

    /* renamed from: f */
    public final /* synthetic */ zzjk f70080f;

    public RunnableC25050f2(zzjk zzjkVar, String str, String str2, zzp zzpVar, boolean z, zzcf zzcfVar) {
        this.f70080f = zzjkVar;
        this.f70075a = str;
        this.f70076b = str2;
        this.f70077c = zzpVar;
        this.f70078d = z;
        this.f70079e = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable th;
        Bundle bundle;
        RemoteException e;
        Bundle bundle2 = new Bundle();
        try {
            zzjk zzjkVar = this.f70080f;
            zzdx zzdxVar = zzjkVar.d;
            if (zzdxVar == null) {
                ((v0) zzjkVar).a.zzay().f.m38588c("Failed to get user properties; not connected to service", this.f70075a, this.f70076b);
                ((v0) this.f70080f).a.w().z(this.f70079e, bundle2);
                return;
            }
            Objects.requireNonNull(this.f70077c, "null reference");
            List<zzks> m38611C0 = zzdxVar.m38611C0(this.f70075a, this.f70076b, this.f70078d, this.f70077c);
            bundle = new Bundle();
            if (m38611C0 != null) {
                for (zzks zzksVar : m38611C0) {
                    String str = zzksVar.e;
                    if (str != null) {
                        bundle.putString(zzksVar.b, str);
                    } else {
                        Long l = zzksVar.d;
                        if (l != null) {
                            bundle.putLong(zzksVar.b, l.longValue());
                        } else {
                            Double d = zzksVar.g;
                            if (d != null) {
                                bundle.putDouble(zzksVar.b, d.doubleValue());
                            }
                        }
                    }
                }
            }
            bundle2 = bundle;
            try {
                try {
                    this.f70080f.o();
                    ((v0) this.f70080f).a.w().z(this.f70079e, bundle);
                } catch (RemoteException e2) {
                    e = e2;
                    bundle2 = bundle;
                    ((v0) this.f70080f).a.zzay().f.m38588c("Failed to get user properties; remote exception", this.f70075a, e);
                    ((v0) this.f70080f).a.w().z(this.f70079e, bundle);
                }
            } catch (Throwable th2) {
                th = th2;
                ((v0) this.f70080f).a.w().z(this.f70079e, bundle2);
                throw th;
            }
        } catch (RemoteException e3) {
            e = e3;
            bundle = bundle2;
        } catch (Throwable th3) {
            th = th3;
            ((v0) this.f70080f).a.w().z(this.f70079e, bundle2);
            throw th;
        }
    }
}
