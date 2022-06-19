package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzks;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.g2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/g2.class */
public final class RunnableC25056g2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzp f70104a;

    /* renamed from: b */
    public final /* synthetic */ boolean f70105b;

    /* renamed from: c */
    public final /* synthetic */ zzks f70106c;

    /* renamed from: d */
    public final /* synthetic */ zzjk f70107d;

    public RunnableC25056g2(zzjk zzjkVar, zzp zzpVar, boolean z, zzks zzksVar) {
        this.f70107d = zzjkVar;
        this.f70104a = zzpVar;
        this.f70105b = z;
        this.f70106c = zzksVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk zzjkVar = this.f70107d;
        zzdx zzdxVar = zzjkVar.d;
        if (zzdxVar == null) {
            ((v0) zzjkVar).a.zzay().f.m38590a("Discarding data. Failed to set user property");
            return;
        }
        Objects.requireNonNull(this.f70104a, "null reference");
        this.f70107d.h(zzdxVar, this.f70105b ? null : this.f70106c, this.f70104a);
        this.f70107d.o();
    }
}
