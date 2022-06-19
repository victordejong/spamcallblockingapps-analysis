package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzab;
import com.google.android.gms.measurement.internal.zzdx;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzp;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.u2 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/u2.class */
public final class RunnableC25116u2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzp f70310a;

    /* renamed from: b */
    public final /* synthetic */ boolean f70311b;

    /* renamed from: c */
    public final /* synthetic */ zzab f70312c;

    /* renamed from: d */
    public final /* synthetic */ zzjk f70313d;

    public RunnableC25116u2(zzjk zzjkVar, zzp zzpVar, boolean z, zzab zzabVar, zzab zzabVar2) {
        this.f70313d = zzjkVar;
        this.f70310a = zzpVar;
        this.f70311b = z;
        this.f70312c = zzabVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk zzjkVar = this.f70313d;
        zzdx zzdxVar = zzjkVar.d;
        if (zzdxVar == null) {
            ((v0) zzjkVar).a.zzay().f.m38590a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        Objects.requireNonNull(this.f70310a, "null reference");
        this.f70313d.h(zzdxVar, this.f70311b ? null : this.f70312c, this.f70310a);
        this.f70313d.o();
    }
}
