package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzkw;
import com.google.android.gms.measurement.internal.zzp;
import java.util.ArrayList;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.w2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/w2.class */
public final class RunnableC25123w2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f70332a;

    /* renamed from: b */
    public final /* synthetic */ String f70333b;

    /* renamed from: c */
    public final /* synthetic */ zzp f70334c;

    /* renamed from: d */
    public final /* synthetic */ zzcf f70335d;

    /* renamed from: e */
    public final /* synthetic */ zzjk f70336e;

    public RunnableC25123w2(zzjk zzjkVar, String str, String str2, zzp zzpVar, zzcf zzcfVar) {
        this.f70336e = zzjkVar;
        this.f70332a = str;
        this.f70333b = str2;
        this.f70334c = zzpVar;
        this.f70335d = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = arrayList;
        try {
            try {
                zzjk zzjkVar = this.f70336e;
                zzdx zzdxVar = zzjkVar.d;
                if (zzdxVar == null) {
                    ((v0) zzjkVar).a.zzay().f.m38588c("Failed to get conditional properties; not connected to service", this.f70332a, this.f70333b);
                    arrayList2 = ((v0) this.f70336e).a;
                    arrayList3 = arrayList;
                } else {
                    Objects.requireNonNull(this.f70334c, "null reference");
                    ArrayList p = zzkw.p(zzdxVar.m38603g1(this.f70332a, this.f70333b, this.f70334c));
                    this.f70336e.o();
                    arrayList2 = ((v0) this.f70336e).a;
                    arrayList3 = p;
                }
            } catch (RemoteException e) {
                ((v0) this.f70336e).a.zzay().f.m38587d("Failed to get conditional properties; remote exception", this.f70332a, this.f70333b, e);
                arrayList2 = ((v0) this.f70336e).a;
            }
            arrayList2.w().y(this.f70335d, arrayList3);
        } catch (Throwable th) {
            ((v0) this.f70336e).a.w().y(this.f70335d, arrayList2);
            throw th;
        }
    }
}
