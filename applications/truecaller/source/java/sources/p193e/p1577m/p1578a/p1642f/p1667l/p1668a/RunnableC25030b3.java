package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.content.ComponentName;
import android.content.Context;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzjj;
import com.google.android.gms.measurement.internal.zzjk;
/* renamed from: e.m.a.f.l.a.b3 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/b3.class */
public final class RunnableC25030b3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzjj f70016a;

    public RunnableC25030b3(zzjj zzjjVar) {
        this.f70016a = zzjjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk zzjkVar = this.f70016a.c;
        Context context = ((v0) zzjkVar).a.a;
        zzaa zzaaVar = ((v0) this.f70016a.c).a.f;
        zzjk.r(zzjkVar, new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
