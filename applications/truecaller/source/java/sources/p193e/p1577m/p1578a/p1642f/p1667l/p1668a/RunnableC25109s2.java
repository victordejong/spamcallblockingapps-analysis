package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzau;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.s2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/s2.class */
public final class RunnableC25109s2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzp f70281a;

    /* renamed from: b */
    public final /* synthetic */ boolean f70282b;

    /* renamed from: c */
    public final /* synthetic */ zzau f70283c;

    /* renamed from: d */
    public final /* synthetic */ zzjk f70284d;

    public RunnableC25109s2(zzjk zzjkVar, zzp zzpVar, boolean z, zzau zzauVar, String str) {
        this.f70284d = zzjkVar;
        this.f70281a = zzpVar;
        this.f70282b = z;
        this.f70283c = zzauVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk zzjkVar = this.f70284d;
        zzdx zzdxVar = zzjkVar.d;
        if (zzdxVar == null) {
            ((v0) zzjkVar).a.zzay().f.m38590a("Discarding data. Failed to send event to service");
            return;
        }
        Objects.requireNonNull(this.f70281a, "null reference");
        this.f70284d.h(zzdxVar, this.f70282b ? null : this.f70283c, this.f70281a);
        this.f70284d.o();
    }
}
