package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzd;
import com.google.android.gms.measurement.internal.zzid;
/* renamed from: e.m.a.f.l.a.i */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/i.class */
public final class RunnableC25064i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f70129a;

    /* renamed from: b */
    public final /* synthetic */ long f70130b;

    /* renamed from: c */
    public final /* synthetic */ zzd f70131c;

    public RunnableC25064i(zzd zzdVar, String str, long j) {
        this.f70131c = zzdVar;
        this.f70129a = str;
        this.f70130b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzd zzdVar = this.f70131c;
        String str = this.f70129a;
        long j = this.f70130b;
        zzdVar.d();
        Preconditions.m38901g(str);
        Integer num = (Integer) zzdVar.c.get(str);
        if (num == null) {
            ((v0) zzdVar).a.zzay().f.m38589b("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        zzid k = ((v0) zzdVar).a.t().k(false);
        int intValue = num.intValue() - 1;
        if (intValue != 0) {
            zzdVar.c.put(str, Integer.valueOf(intValue));
            return;
        }
        zzdVar.c.remove(str);
        Long l = (Long) zzdVar.b.get(str);
        if (l == null) {
            ((v0) zzdVar).a.zzay().f.m38590a("First ad unit exposure time was never set");
        } else {
            long longValue = l.longValue();
            zzdVar.b.remove(str);
            zzdVar.i(str, j - longValue, k);
        }
        if (!zzdVar.c.isEmpty()) {
            return;
        }
        long j2 = zzdVar.d;
        if (j2 == 0) {
            ((v0) zzdVar).a.zzay().f.m38590a("First ad exposure time was never set");
            return;
        }
        zzdVar.h(j - j2, k);
        zzdVar.d = 0L;
    }
}
